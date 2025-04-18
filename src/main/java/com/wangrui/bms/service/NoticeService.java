package com.wangrui.bms.service;

import com.wangrui.bms.model.Notice;
import java.util.List;

public interface NoticeService {
    List<Notice> getActiveNotices();
} 