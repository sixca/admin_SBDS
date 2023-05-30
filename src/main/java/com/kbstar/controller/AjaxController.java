package com.kbstar.controller;

import com.kbstar.dto.Adm;
import com.kbstar.service.AdmService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
public class AjaxController {

    @Autowired
    AdmService admService;

    @RequestMapping("/checkid")
    public Object checkid(String adminId) throws Exception {
        int result = 0;
        Adm adm = null;
        adm = admService.get(adminId);
//        if(adm != null){
//            result=1;
//        }
        return result;
    }
}
