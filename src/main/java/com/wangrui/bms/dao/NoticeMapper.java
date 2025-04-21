package com.wangrui.bms.dao;

import com.wangrui.bms.model.Notice;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 公告DAO接口
 */
@Mapper
public interface NoticeMapper {
    
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
    Notice queryNoticeById(@Param("noticeId") Integer noticeId);
    
    /**
     * 添加公告
     * @param notice 公告对象
     * @return 影响的行数
     */
    int addNotice(Notice notice);
    
    /**
     * 更新公告
     * @param notice 公告对象
     * @return 影响的行数
     */
    int updateNotice(Notice notice);
    
    /**
     * 删除公告
     * @param noticeId 公告ID
     * @return 影响的行数
     */
    int deleteNotice(@Param("noticeId") Integer noticeId);
} 