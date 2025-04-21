package com.wangrui.bms;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
@MapperScan({"com.wangrui.bms.mapper", "com.wangrui.bms.dao"})
public class BookManagerByOracleApplication {

    public static void main(String[] args) {
        SpringApplication.run(BookManagerByOracleApplication.class, args);
    }

}
