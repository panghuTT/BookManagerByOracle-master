-- 获取图书总数
SELECT COUNT(*) as total_books FROM T_BOOK_INFO;

-- 获取借出图书数
SELECT COUNT(*) as borrowed_books 
FROM T_BOOK_INFO 
WHERE ISBORROWED = 1;

-- 获取可用图书数
SELECT COUNT(*) as available_books 
FROM T_BOOK_INFO 
WHERE ISBORROWED = 0;

-- 获取图书分类统计
SELECT 
    bt.BOOKTYPENAME as category,
    COUNT(bi.BOOKID) as count
FROM T_BOOK_INFO bi
JOIN T_BOOK_TYPE bt ON bi.BOOKTYPEID = bt.BOOKTYPEID
GROUP BY bt.BOOKTYPENAME
ORDER BY count DESC;

-- 获取近7天借阅趋势
SELECT 
    TO_CHAR(b.BORROWTIME, 'YYYY-MM-DD') as date,
    COUNT(*) as borrow_count
FROM T_BORROW b
WHERE b.BORROWTIME >= TRUNC(SYSDATE) - 6
GROUP BY TO_CHAR(b.BORROWTIME, 'YYYY-MM-DD')
ORDER BY date;

-- 获取热门图书排行榜（借阅次数最多的前5本）
SELECT 
    bi.BOOKID,
    bi.BOOKNAME as title,
    bi.BOOKAUTHOR as author,
    COUNT(b.BORROWID) as borrow_count
FROM T_BOOK_INFO bi
LEFT JOIN T_BORROW b ON bi.BOOKID = b.BOOKID
GROUP BY bi.BOOKID, bi.BOOKNAME, bi.BOOKAUTHOR
ORDER BY borrow_count DESC
FETCH FIRST 5 ROWS ONLY; 