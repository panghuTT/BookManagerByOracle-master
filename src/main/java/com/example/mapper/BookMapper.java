package com.example.mapper;

import com.example.entity.Book;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Result;

import java.util.List;

@Mapper
public interface BookMapper {
    // ... 其他方法 ...
    
    @Select("SELECT BOOKID as bookId, BOOKNAME as bookName, BOOKAUTHOR as bookAuthor, " +
            "BOOKPRICE as bookPrice, BOOKTYPEID as bookTypeId, BOOKDESC as bookDesc, " +
            "ISBORROWED as isBorrowed, BOOKIMG as bookImg FROM T_BOOK_INFO")
    List<Book> getAllBooks();
} 