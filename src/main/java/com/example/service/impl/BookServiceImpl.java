package com.example.service.impl;

import com.example.entity.Book;
import com.example.mapper.BookMapper;
import com.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Random;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public Book getRandomBook() {
        try {
            List<Book> allBooks = bookMapper.getAllBooks();
            System.out.println("获取到的图书数量: " + (allBooks != null ? allBooks.size() : 0));
            
            if (allBooks == null || allBooks.isEmpty()) {
                System.out.println("没有找到任何图书");
                return null;
            }
            
            Random random = new Random();
            int randomIndex = random.nextInt(allBooks.size());
            Book selectedBook = allBooks.get(randomIndex);
            System.out.println("随机选择的图书: " + selectedBook.getBookName());
            return selectedBook;
        } catch (Exception e) {
            System.out.println("获取随机图书异常: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
} 