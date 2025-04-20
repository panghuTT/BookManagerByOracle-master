package com.example.controller;

import com.example.entity.Notice;
import com.example.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/reader")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @GetMapping("/index")
    public String index(Model model) {
        try {
            List<Notice> notices = noticeService.getActiveNotices();
            model.addAttribute("notices", notices);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "reader/reader_index";
    }

    @GetMapping("/getNotices")
    public Map<String, Object> getNotices() {
        Map<String, Object> result = new HashMap<>();
        try {
            List<Notice> notices = noticeService.getActiveNotices();
            result.put("code", 0);
            result.put("msg", "获取公告成功");
            result.put("data", notices);
        } catch (Exception e) {
            result.put("code", 1);
            result.put("msg", "获取公告失败：" + e.getMessage());
        }
        return result;
    }
} 