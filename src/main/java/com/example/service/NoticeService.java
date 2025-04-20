package com.example.service;

import com.example.entity.Notice;
import java.util.List;

public interface NoticeService {
    List<Notice> getActiveNotices();
} 