package com.kbstar.controller;

import com.kbstar.dto.FCMNotificationRequestDto;
import com.kbstar.service.FCMNotificationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@RequiredArgsConstructor
public class PushController {
    private final FCMNotificationService fcmNotificationService;

    @PostMapping("/notification")
    public void sendNotificationByToken(FCMNotificationRequestDto requestDto) {
        fcmNotificationService.sendNotificationByToken(requestDto);
    }
}
