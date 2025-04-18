package com.wangrui.bms.mapper;

import com.wangrui.bms.model.Notice;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface NoticeMapper {
    @Select("SELECT * FROM notice WHERE is_active = 1 ORDER BY create_time DESC")
    List<Notice> getActiveNotices();
} 