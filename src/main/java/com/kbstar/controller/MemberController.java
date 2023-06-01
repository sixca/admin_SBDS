package com.kbstar.controller;

import com.kbstar.dto.Member;
import com.kbstar.service.MemberService;
import com.kbstar.util.FileUploadUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    BCryptPasswordEncoder encoder;

    @Autowired
    MemberService memberService;
    String dir = "member/";

    @Value("${uploadimgdir}")
    String imgdir;
//
//    @RequestMapping("/add")
//    public String add(Model model){
//        model.addAttribute("center", dir+"add");
//         return "index";
//        }
//
//    @RequestMapping("/addimpl")
//    public String addimpl(Model model, @Validated Member member, Errors errors) throws Exception {   //member에 문제가 생기면, errors 저장. validation
//       if(errors.hasErrors()){
//           List<ObjectError> es = errors.getAllErrors();    //Member에 담아둔(DefaultMessage) 어노테이션과 message
//           String msg ="";
//           for(ObjectError e:es){
//               msg += "<h4>";
//               msg += e.getDefaultMessage();
//               msg += "</h4>";
//           }
//           throw new Exception(msg);
//       }
//       member.setPassword(encoder.encode(member.getPassword()));
//       memberService.register(member);  // DB에 짚어 넣고
//       return "redirect:/member/all";
//    }

    @RequestMapping("/all")
    public String all(Model model) throws Exception {
        List<Member> list = null;
        list = memberService.get();
        model.addAttribute("mlist", list);
        model.addAttribute("center", dir+"all");
        return "index";
    }

    @RequestMapping("/detail")   //로그인 사용자 아이디 클릭 시 상세정보조회
    public String detail(Model model, Integer id) throws Exception {
        Member member =null;
        try {
            member = memberService.get(id);
        } catch (Exception e) {
            throw new Exception("시스템 장애");
        }
        model.addAttribute("memberinfo", member);
        model.addAttribute("center", dir+"detail");     //센터에 정보를 뿌림. 익숙해 지세요!
        return "index";
    }
//    @RequestMapping("/updateimpl")
//    public String updateimpl(Model model, @Validated Member member, Errors errors) throws Exception {
//        if(errors.hasErrors()){
//            List<ObjectError> es = errors.getAllErrors();    //Member에 담아둔(DefaultMessage) 어노테이션과 message
//            String msg ="";
//            for(ObjectError e:es){
//                msg += "<h4>";
//                msg += e.getDefaultMessage();
//                msg += "</h4>";
//            }
//            throw new Exception(msg);
//        }
//        MultipartFile mf = member.getImgMember();
//        String new_img = mf.getOriginalFilename();
//        if(new_img == null || new_img.equals("")){
//            memberService.modify(member);
//        }else {
//            member.setImg(new_img);
//            memberService.modify(member);
//            FileUploadUtil.saveFile(mf, imgdir);
//        }
//        return "redirect:/member/detail?id="+member.getId();         //수정이 일어난 후, "/detail?id="로 다시 보냄
//    }

    @RequestMapping("/updateimpl")
    public String updateimpl(Model model, @Validated Member member, Errors errors) throws Exception {
        if(errors.hasErrors()){
            List<ObjectError> es = errors.getAllErrors();    //Member에 담아둔(DefaultMessage) 어노테이션과 message
            String msg ="";
            for(ObjectError e:es){
                msg += "<h4>";
                msg += e.getDefaultMessage();
                msg += "</h4>";
            }
            throw new Exception(msg);
        }
        MultipartFile mf = member.getImgMember();   // 파일덩어리
        String new_imgname = mf.getOriginalFilename();   // 파일덩어리에서 이름을 꺼내온다
        if (new_imgname.equals("") || new_imgname == null) {   //이미지 지정이 따로 없으면, 기존 이미지를 그대로 쓰겠다
            memberService.modify(member);
        }else {
            member.setImg(new_imgname); //아니면 (새 이미지를 지정했다면) item 전체 업데이트 쳐라.
            memberService.modify(member);
            FileUploadUtil.saveFile(mf, imgdir);     // 경로에 업로드
        }
        return "redirect:/member/detail?id="+member.getId();
    }


    @RequestMapping("/deleteimpl")
    public String deleteimpl(Model model, Integer id) throws Exception {
        memberService.remove(id);
        return "redirect:/member/all";
    }

}
