package com.wangrui.bms.model;

import java.util.Date;

/**
 * 公告实体类，对应T_NOTICE表
 */
public class Notice {
    private Integer noticeId;
    private String title;
    private String content;
    private Date createTime;
    private Integer isActive;

    // 无参构造函数
    public Notice() {
    }

    // 全参构造函数
    public Notice(Integer noticeId, String title, String content, Date createTime, Integer isActive) {
        this.noticeId = noticeId;
        this.title = title;
        this.content = content;
        this.createTime = createTime;
        this.isActive = isActive;
    }

    public Integer getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(Integer noticeId) {
        this.noticeId = noticeId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getIsActive() {
        return isActive;
    }

    public void setIsActive(Integer isActive) {
        this.isActive = isActive;
    }

    @Override
    public String toString() {
        return "Notice{" +
                "noticeId=" + noticeId +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", isActive=" + isActive +
                '}';
    }
} 