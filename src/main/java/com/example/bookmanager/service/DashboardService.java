package com.example.bookmanager.service;

import java.util.List;
import java.util.Map;

public interface DashboardService {
    Map<String, Object> getStatistics();
    List<Map<String, Object>> getCategoryStatistics();
    List<Map<String, Object>> getBorrowTrend();
    List<Map<String, Object>> getHotBooks();
} 