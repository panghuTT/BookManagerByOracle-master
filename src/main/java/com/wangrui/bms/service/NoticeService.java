package com.wangrui.bms.service;

import com.wangrui.bms.model.Notice;

import java.util.List;

/**
 * 公告服务接口
 */
public interface NoticeService {
    
    /**
     * 查询所有公告（包括启用和禁用的）
     * @return 公告列表
     */
    List<Notice> queryAllNotices();
    
    /**
     * 查询所有活跃公告
     * @return 公告列表
     */
    List<Notice> queryActiveNotices();
    
    /**
     * 根据ID查询公告
     * @param noticeId 公告ID
     * @return 公告对象
     */
    Notice queryNoticeById(Integer noticeId);
    
    /**
     * 添加公告
     * @param notice 公告对象
     * @return 是否添加成功
     */
    boolean addNotice(Notice notice);
    
    /**
     * 更新公告
     * @param notice 公告对象
     * @return 是否更新成功
     */
    boolean updateNotice(Notice notice);
    
    /**
     * 删除公告
     * @param noticeId 公告ID
     * @return 是否删除成功
     */
    boolean deleteNotice(Integer noticeId);
} 