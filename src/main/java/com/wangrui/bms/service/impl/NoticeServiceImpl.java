package com.wangrui.bms.service.impl;

import com.wangrui.bms.dao.NoticeMapper;
import com.wangrui.bms.model.Notice;
import com.wangrui.bms.service.NoticeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 公告服务实现类
 */
@Service
public class NoticeServiceImpl implements NoticeService {

    @Resource
    private NoticeMapper noticeMapper;

    @Override
    public List<Notice> queryAllNotices() {
        return noticeMapper.queryAllNotices();
    }

    @Override
    public List<Notice> queryActiveNotices() {
        return noticeMapper.queryActiveNotices();
    }

    @Override
    public Notice queryNoticeById(Integer noticeId) {
        return noticeMapper.queryNoticeById(noticeId);
    }

    @Override
    public boolean addNotice(Notice notice) {
        // 如果没有设置创建时间，设置为当前时间
        if (notice.getCreateTime() == null) {
            notice.setCreateTime(new Date());
        }
        
        // 如果没有设置状态，设置为活跃
        if (notice.getIsActive() == null) {
            notice.setIsActive(1);
        }
        
        return noticeMapper.addNotice(notice) > 0;
    }

    @Override
    public boolean updateNotice(Notice notice) {
        return noticeMapper.updateNotice(notice) > 0;
    }

    @Override
    public boolean deleteNotice(Integer noticeId) {
        return noticeMapper.deleteNotice(noticeId) > 0;
    }
} 