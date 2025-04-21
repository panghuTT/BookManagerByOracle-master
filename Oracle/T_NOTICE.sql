/*
 Navicat Oracle Dump SQL

 Source Server         : wangrui
 Source Server Type    : Oracle
 Source Server Version : 120200 (Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production)
 Source Host           : 39.106.9.202:1521
 Source Schema         : ADMIN1

 Target Server Type    : Oracle
 Target Server Version : 120200 (Oracle Database 12c Enterprise Edition Release 12.2.0.1.0 - 64bit Production)
 File Encoding         : 65001

 Date: 22/04/2025 01:03:39
*/


-- ----------------------------
-- Table structure for T_NOTICE
-- ----------------------------
DROP TABLE "ADMIN1"."T_NOTICE";
CREATE TABLE "ADMIN1"."T_NOTICE" (
  "NOTICE_ID" NUMBER VISIBLE NOT NULL,
  "TITLE" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "CONTENT" CLOB VISIBLE NOT NULL,
  "CREATE_TIME" DATE VISIBLE DEFAULT SYSDATE,
  "IS_ACTIVE" NUMBER(1,0) VISIBLE DEFAULT 1
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of T_NOTICE
-- ----------------------------
INSERT INTO "ADMIN1"."T_NOTICE" ("NOTICE_ID", "TITLE", "CONTENT", "CREATE_TIME", "IS_ACTIVE") VALUES ('25', '欢迎使用图书管理系统', '欢迎使用图书管理系统，祝您使用愉快！', TO_DATE('2025-04-20 22:32:34', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "ADMIN1"."T_NOTICE" ("NOTICE_ID", "TITLE", "CONTENT", "CREATE_TIME", "IS_ACTIVE") VALUES ('26', '系统维护通知', '系统将于每周日凌晨2:00-4:00进行例行维护，给您带来的不便敬请谅解。', TO_DATE('2025-04-20 22:32:34', 'SYYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "ADMIN1"."T_NOTICE" ("NOTICE_ID", "TITLE", "CONTENT", "CREATE_TIME", "IS_ACTIVE") VALUES ('27', '借阅规则说明', '每本书借阅期限为30天，逾期将收取滞纳金，请及时归还。', TO_DATE('2025-04-20 22:32:34', 'SYYYY-MM-DD HH24:MI:SS'), '1');
COMMIT;
COMMIT;

-- ----------------------------
-- Primary Key structure for table T_NOTICE
-- ----------------------------
ALTER TABLE "ADMIN1"."T_NOTICE" ADD CONSTRAINT "SYS_C0012679" PRIMARY KEY ("NOTICE_ID");

-- ----------------------------
-- Checks structure for table T_NOTICE
-- ----------------------------
ALTER TABLE "ADMIN1"."T_NOTICE" ADD CONSTRAINT "SYS_C0012677" CHECK ("TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ADMIN1"."T_NOTICE" ADD CONSTRAINT "SYS_C0012678" CHECK ("CONTENT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table T_NOTICE
-- ----------------------------
CREATE TRIGGER "ADMIN1"."NOTICE_TRIGGER" BEFORE INSERT ON "ADMIN1"."T_NOTICE" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
    SELECT notice_seq.NEXTVAL INTO :NEW.notice_id FROM DUAL;
END;
/
