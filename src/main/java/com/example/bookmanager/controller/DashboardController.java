package com.example.bookmanager.controller;

import com.example.bookmanager.service.DashboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/dashboard")
public class DashboardController {

    @Autowired
    private DashboardService dashboardService;

    @GetMapping("/statistics")
    public Map<String, Object> getStatistics() {
        return dashboardService.getStatistics();
    }

    @GetMapping("/category-stats")
    public List<Map<String, Object>> getCategoryStatistics() {
        return dashboardService.getCategoryStatistics();
    }

    @GetMapping("/borrow-trend")
    public List<Map<String, Object>> getBorrowTrend() {
        return dashboardService.getBorrowTrend();
    }

    @GetMapping("/hot-books")
    public List<Map<String, Object>> getHotBooks() {
        return dashboardService.getHotBooks();
    }
} 