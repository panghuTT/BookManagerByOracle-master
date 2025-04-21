package com.example.service;

import com.example.entity.Book;
import java.util.List;

public interface BookService {
    // ... 其他方法 ...
    
    /**
     * 获取随机一本图书作为推荐
     * @return 随机图书
     */
    Book getRandomBook();
} 