package com.wangrui.bms.service;

import java.util.List;
import java.util.Map;

public interface DashboardService {
    Map<String, Object> getStatistics();
    List<Map<String, Object>> getCategoryStatistics();
    List<Map<String, Object>> getBorrowTrend();
    List<Map<String, Object>> getHotBooks();
    
    // 获取近7天借阅和归还统计
    List<Map<String, Object>> getBorrowAndReturnTrend();
} 