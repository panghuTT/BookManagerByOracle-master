package com.wangrui.bms.web;

import com.wangrui.bms.model.Notice;
import com.wangrui.bms.service.NoticeService;
import com.wangrui.bms.utils.JsonUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/notice")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    /**
     * 分页查询公告
     * @param page 页码
     * @param limit 每页数量
     * @return 公告列表
     */
    @RequestMapping(value = "/queryNoticesByPage")
    @ResponseBody
    public Map<String, Object> queryNoticesByPage(Integer page, Integer limit) {
        // 获取所有公告（包括启用和禁用的）
        List<Notice> notices = noticeService.queryAllNotices();
        
        // 结果map
        Map<String, Object> res = new HashMap<>();
        res.put("code", 0);
        res.put("msg", "");
        res.put("count", notices.size());
        res.put("data", notices);
        return res;
    }
    
    /**
     * 分页查询活跃公告（读者端使用）
     * @param page 页码
     * @param limit 每页数量
     * @return 公告列表
     */
    @RequestMapping(value = "/queryActiveNoticesByPage")
    @ResponseBody
    public Map<String, Object> queryActiveNoticesByPage(Integer page, Integer limit) {
        // 获取活跃公告
        List<Notice> notices = noticeService.queryActiveNotices();
        
        // 结果map
        Map<String, Object> res = new HashMap<>();
        res.put("code", 0);
        res.put("msg", "");
        res.put("count", notices.size());
        res.put("data", notices);
        return res;
    }

    /**
     * 根据ID查询公告
     * @param noticeId 公告ID
     * @return 公告对象
     */
    @RequestMapping(value = "/queryNoticeById")
    @ResponseBody
    public Notice queryNoticeById(Integer noticeId) {
        return noticeService.queryNoticeById(noticeId);
    }

    /**
     * 添加公告
     * @param json 公告JSON字符串
     * @return 操作结果
     */
    @RequestMapping(value = "/addNotice")
    @ResponseBody
    public Integer addNotice(String json) {
        // 获取参数的对象
        Notice notice = JsonUtil.parseObject(json, Notice.class);
        // 设置创建时间为当前时间
        notice.setCreateTime(new Date());
        return noticeService.addNotice(notice) ? 1 : 0;
    }

    /**
     * 更新公告
     * @param json 公告JSON字符串
     * @return 操作结果
     */
    @RequestMapping(value = "/updateNotice")
    @ResponseBody
    public Integer updateNotice(String json) {
        // 获取参数的对象
        Notice notice = JsonUtil.parseObject(json, Notice.class);
        return noticeService.updateNotice(notice) ? 1 : 0;
    }

    /**
     * 删除公告
     * @param noticeId 公告ID
     * @return 操作结果
     */
    @RequestMapping(value = "/deleteNotice")
    @ResponseBody
    public Integer deleteNotice(Integer noticeId) {
        return noticeService.deleteNotice(noticeId) ? 1 : 0;
    }
} 