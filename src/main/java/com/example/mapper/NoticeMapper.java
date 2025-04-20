package com.example.mapper;

import com.example.entity.Notice;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface NoticeMapper {
    @Select("SELECT notice_id as noticeId, title, content, create_time as createTime, is_active as isActive " +
            "FROM T_NOTICE WHERE is_active = 1 ORDER BY create_time DESC")
    List<Notice> getActiveNotices();
} 