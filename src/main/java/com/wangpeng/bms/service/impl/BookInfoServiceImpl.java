package com.wangpeng.bms.service.impl;

import com.wangpeng.bms.mapper.BookInfoMapper;
import com.wangpeng.bms.model.BookInfo;
import com.wangpeng.bms.service.BookInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class BookInfoServiceImpl implements BookInfoService {

    @Resource
    BookInfoMapper bookInfoMapper;

    @Override
    public List<BookInfo> queryBookInfosByPage(Integer page, Integer size) {
        return bookInfoMapper.selectAllByLimit((page - 1) * size, size);
    }

    @Override
    public Integer getCount() {
        return bookInfoMapper.selectCount();
    }

    @Override
    public Integer addBookInfo(BookInfo bookInfo) {
        // 查询当前最大的bookid
        Integer maxBookId = 1; // 默认从1开始
        try {
            List<BookInfo> books = bookInfoMapper.selectAll();
            if (books != null && !books.isEmpty()) {
                for (BookInfo b : books) {
                    if (b.getBookid() != null && b.getBookid() > maxBookId) {
                        maxBookId = b.getBookid();
                    }
                }
                maxBookId++; // 递增
            }
        } catch (Exception e) {
            // 忽略查询错误，使用默认值
            System.out.println("查询最大bookid失败，使用默认值: " + maxBookId);
        }
        
        // 手动设置ID，绕过触发器
        bookInfo.setBookid(maxBookId);
        
        // 使用新方法绕过触发器
        return bookInfoMapper.insertBookInfoDirectly(bookInfo);
    }

    @Override
    public Integer deleteBookInfos(List<BookInfo> bookInfos) {
        int count = 0;
        for(BookInfo bookInfo : bookInfos) {
            count += bookInfoMapper.deleteByPrimaryKey(bookInfo.getBookid());
        }
        return count;
    }

    @Override
    public Integer updateBookInfo(BookInfo bookInfo) {
        return bookInfoMapper.updateByPrimaryKeySelective(bookInfo);
    }

    @Override
    public Integer getSearchCount(Map<String, Object> searchParam) {
        return bookInfoMapper.selectCountBySearch(searchParam);
    }

    @Override
    public List<BookInfo> searchBookInfosByPage(Integer page, Integer size, Map<String, Object> searchParam) {
        searchParam.put("begin", (page - 1) * size);
        searchParam.put("size", size);
        return bookInfoMapper.selectBySearch(searchParam);
    }

    @Override
    public List<BookInfo> queryBookInfos() {
        return bookInfoMapper.selectAll();
    }

    @Override
    public Integer getCountByType(Map<String, Object> map) {
        return bookInfoMapper.selectCountByType(map);
    }

    @Override
    public List<BookInfo> queryBookInfosByPageByType(Integer page, Integer size, Map<String, Object> map) {
        map.put("begin", (page - 1) * size);
        map.put("size", size);
        return bookInfoMapper.selectByType(map);
    }

    @Override
    public BookInfo queryBookInfoById(Integer bookid) {
        return bookInfoMapper.selectByPrimaryKey(bookid);
    }

}
