package com.kbstar.dto;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class Notice {
    private Integer id;
    private Integer admId;
    private String title;
    private String writer;
    private String img;
    private Integer hit;
    private Date rdate;

    private MultipartFile imgName;

    public Notice(String title, String img) {
        this.title = title;
        this.img = img;
    }
}