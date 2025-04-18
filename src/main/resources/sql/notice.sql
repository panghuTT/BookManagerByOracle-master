CREATE TABLE notice (
    noticeid NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    content CLOB NOT NULL,
    create_time DATE DEFAULT SYSDATE,
    is_active NUMBER(1) DEFAULT 1
);

-- 创建序列
CREATE SEQUENCE notice_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- 创建触发器
CREATE OR REPLACE TRIGGER notice_trigger
    BEFORE INSERT ON notice
    FOR EACH ROW
BEGIN
    SELECT notice_seq.NEXTVAL INTO :NEW.noticeid FROM DUAL;
END;
/

-- 插入测试数据
INSERT INTO notice (title, content) VALUES ('欢迎使用图书管理系统', '欢迎使用图书管理系统，祝您使用愉快！');
INSERT INTO notice (title, content) VALUES ('系统维护通知', '系统将于每周日凌晨2:00-4:00进行例行维护，给您带来的不便敬请谅解。');
INSERT INTO notice (title, content) VALUES ('借阅规则说明', '每本书借阅期限为30天，逾期将收取滞纳金，请及时归还。'); 