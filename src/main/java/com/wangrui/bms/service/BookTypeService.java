package com.wangrui.bms.service;

import com.wangrui.bms.model.BookType;

import java.util.List;
import java.util.Map;

public interface BookTypeService {
    List<BookType> queryBookTypesByPage(Integer page, Integer size);

    Integer getCount();

    Integer addBookType(BookType bookType);

    Integer deleteBookTypes(List<BookType> bookTypes);

    Integer updateBookType(BookType bookType);

    List<BookType> queryBookTypes();

    int getSearchCount(Map<String, Object> searchParam);

    List<BookType> searchBookTypesByPage(Integer page, Integer size, Map<String, Object> searchParam);
}
