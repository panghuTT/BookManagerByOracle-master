package com.wangrui.bms.controller;

import com.wangrui.bms.model.Notice;
import com.wangrui.bms.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/notice")
public class NoticeController {
    @Autowired
    private NoticeService noticeService;

    @GetMapping("/reader/getNotices")
    public List<Notice> getNotices() {
        return noticeService.getActiveNotices();
    }
} 