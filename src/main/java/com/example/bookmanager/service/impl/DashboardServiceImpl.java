package com.example.bookmanager.service.impl;

import com.example.bookmanager.service.DashboardService;
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
                "(SELECT COUNT(*) FROM T_BOOK_INFO WHERE ISBORROWED = 0) as available_books";
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
} 