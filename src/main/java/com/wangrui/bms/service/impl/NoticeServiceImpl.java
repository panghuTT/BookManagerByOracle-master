package com.wangrui.bms.service.impl;

import com.wangrui.bms.mapper.NoticeMapper;
import com.wangrui.bms.model.Notice;
import com.wangrui.bms.service.NoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {
    @Autowired
    private NoticeMapper noticeMapper;

    @Override
    public List<Notice> getActiveNotices() {
        return noticeMapper.getActiveNotices();
    }
} 