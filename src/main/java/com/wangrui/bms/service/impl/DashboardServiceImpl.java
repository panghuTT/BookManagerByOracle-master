package com.wangrui.bms.service.impl;

import com.wangrui.bms.service.DashboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class DashboardServiceImpl implements DashboardService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Map<String, Object> getStatistics() {
        String sql = "SELECT " +
                "(SELECT COUNT(*) FROM T_BOOK_INFO) as total_books, " +
                "(SELECT COUNT(*) FROM T_BOOK_INFO WHERE ISBORROWED = 1) as borrowed_books, " +
                "(SELECT COUNT(*) FROM T_BOOK_INFO WHERE ISBORROWED = 0) as available_books " +
                "FROM DUAL";
        return jdbcTemplate.queryForMap(sql);
    }

    @Override
    public List<Map<String, Object>> getCategoryStatistics() {
        String sql = "SELECT bt.BOOKTYPENAME as category, COUNT(bi.BOOKID) as count " +
                "FROM T_BOOK_INFO bi " +
                "JOIN T_BOOK_TYPE bt ON bi.BOOKTYPEID = bt.BOOKTYPEID " +
                "GROUP BY bt.BOOKTYPENAME " +
                "ORDER BY count DESC";
        return jdbcTemplate.queryForList(sql);
    }

    @Override
    public List<Map<String, Object>> getBorrowTrend() {
        String sql = "SELECT TO_CHAR(b.BORROWTIME, 'YYYY-MM-DD') as date, COUNT(*) as borrow_count " +
                "FROM T_BORROW b " +
                "WHERE b.BORROWTIME >= TRUNC(SYSDATE) - 6 " +
                "GROUP BY TO_CHAR(b.BORROWTIME, 'YYYY-MM-DD') " +
                "ORDER BY date";
        return jdbcTemplate.queryForList(sql);
    }

    @Override
    public List<Map<String, Object>> getHotBooks() {
        String sql = "SELECT bi.BOOKID, bi.BOOKNAME as title, bi.BOOKAUTHOR as author, " +
                "COUNT(b.BORROWID) as borrow_count " +
                "FROM T_BOOK_INFO bi " +
                "LEFT JOIN T_BORROW b ON bi.BOOKID = b.BOOKID " +
                "GROUP BY bi.BOOKID, bi.BOOKNAME, bi.BOOKAUTHOR " +
                "ORDER BY borrow_count DESC " +
                "FETCH FIRST 5 ROWS ONLY";
        return jdbcTemplate.queryForList(sql);
    }
    
    @Override
    public List<Map<String, Object>> getBorrowAndReturnTrend() {
        try {
            // 使用Java生成日期范围，避免Oracle特有语法
            java.util.List<Map<String, Object>> result = new java.util.ArrayList<>();
            java.time.LocalDate today = java.time.LocalDate.now();
            java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd");
            
            // 查询借阅统计
            String borrowSql = "SELECT TO_CHAR(BORROWTIME, 'YYYY-MM-DD') as BORROW_DATE, COUNT(*) as COUNT " +
                    "FROM T_BORROW " +
                    "WHERE BORROWTIME >= ? AND BORROWTIME <= ? " +
                    "GROUP BY TO_CHAR(BORROWTIME, 'YYYY-MM-DD')";
            
            // 查询归还统计
            String returnSql = "SELECT TO_CHAR(RETURNTIME, 'YYYY-MM-DD') as RETURN_DATE, COUNT(*) as COUNT " +
                    "FROM T_BORROW " +
                    "WHERE RETURNTIME >= ? AND RETURNTIME <= ? AND RETURNTIME IS NOT NULL " +
                    "GROUP BY TO_CHAR(RETURNTIME, 'YYYY-MM-DD')";
            
            // 获取7天前的日期
            java.time.LocalDate sevenDaysAgo = today.minusDays(6);
            
            // 执行查询获取借阅统计
            java.util.List<Map<String, Object>> borrowStats = jdbcTemplate.queryForList(
                    borrowSql, 
                    java.sql.Date.valueOf(sevenDaysAgo), 
                    java.sql.Date.valueOf(today)
            );
            
            // 执行查询获取归还统计
            java.util.List<Map<String, Object>> returnStats = jdbcTemplate.queryForList(
                    returnSql, 
                    java.sql.Date.valueOf(sevenDaysAgo), 
                    java.sql.Date.valueOf(today)
            );
            
            // 转换为日期到数量的映射
            java.util.Map<String, Integer> borrowMap = new java.util.HashMap<>();
            for (Map<String, Object> stat : borrowStats) {
                String date = (String) stat.get("BORROW_DATE");
                Number count = (Number) stat.get("COUNT");
                borrowMap.put(date, count.intValue());
            }
            
            java.util.Map<String, Integer> returnMap = new java.util.HashMap<>();
            for (Map<String, Object> stat : returnStats) {
                String date = (String) stat.get("RETURN_DATE");
                Number count = (Number) stat.get("COUNT");
                returnMap.put(date, count.intValue());
            }
            
            // 生成日期范围并填充结果
            for (int i = 0; i <= 6; i++) {
                java.time.LocalDate date = sevenDaysAgo.plusDays(i);
                String dateStr = date.format(formatter);
                
                java.util.Map<String, Object> dayData = new java.util.HashMap<>();
                dayData.put("DATE", dateStr);
                dayData.put("BORROW_COUNT", borrowMap.getOrDefault(dateStr, 0));
                dayData.put("RETURN_COUNT", returnMap.getOrDefault(dateStr, 0));
                
                result.add(dayData);
            }
            
            System.out.println("生成的7天借阅和归还数据: " + result);
            return result;
        } catch (Exception e) {
            System.err.println("获取借阅和归还趋势数据时出错: " + e.getMessage());
            e.printStackTrace();
            return java.util.Collections.emptyList();
        }
    }
} 