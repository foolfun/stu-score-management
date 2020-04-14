/*
Navicat SQLite Data Transfer

Source Server         : stu
Source Server Version : 30706
Source Host           : :0

Target Server Type    : SQLite
Target Server Version : 30706
File Encoding         : 65001

Date: 2017-09-17 10:32:30
*/

PRAGMA foreign_keys = OFF;

-- ----------------------------
-- Table structure for "main"."course"
-- ----------------------------
DROP TABLE "main"."course";
CREATE TABLE "course" (
"cid"  TEXT NOT NULL,
"cname"  TEXT NOT NULL,
PRIMARY KEY ("cid")
);

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO "main"."course" VALUES ('c01', 'Nosql');
INSERT INTO "main"."course" VALUES ('c02', '英语');
INSERT INTO "main"."course" VALUES ('c03', '数据库原理与实践');
INSERT INTO "main"."course" VALUES ('c04', '算法分析与设计');

-- ----------------------------
-- Table structure for "main"."sc"
-- ----------------------------
DROP TABLE "main"."sc";
CREATE TABLE "sc" (
"sid"  TEXT NOT NULL,
"cid"  TEXT NOT NULL,
"grade"  TEXT,
PRIMARY KEY ("sid", "cid"),
CONSTRAINT "sid" FOREIGN KEY ("sid") REFERENCES "student" ("sid") ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT "cid" FOREIGN KEY ("cid") REFERENCES "course" ("cid") ON DELETE CASCADE ON UPDATE CASCADE
);

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO "main"."sc" VALUES (1, 'c01', 100);
INSERT INTO "main"."sc" VALUES (2, 'c01', 100);
INSERT INTO "main"."sc" VALUES (1, 'c02', 100);
INSERT INTO "main"."sc" VALUES (12, 'c01', 100);

-- ----------------------------
-- Table structure for "main"."student"
-- ----------------------------
DROP TABLE "main"."student";
CREATE TABLE "student" (
"sid"  TEXT NOT NULL,
"sname"  TEXT NOT NULL,
PRIMARY KEY ("sid")
);

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO "main"."student" VALUES (1, '夏侯淳');
INSERT INTO "main"."student" VALUES (2, '关羽');
INSERT INTO "main"."student" VALUES (3, '马超');
INSERT INTO "main"."student" VALUES (5, '许褚');
INSERT INTO "main"."student" VALUES (4, '张良');
INSERT INTO "main"."student" VALUES (6, '黎明');
INSERT INTO "main"."student" VALUES (24, '肖话');
INSERT INTO "main"."student" VALUES (12, '沈佳宜');

-- ----------------------------
-- View structure for "main"."sc_c"
-- ----------------------------
DROP VIEW IF EXISTS "main"."sc_c";
CREATE VIEW "sc_c" AS 
SELECT
course.cid,
course.cname,
sc.grade,
student.sname,
student.sid
FROM
sc
LEFT JOIN course ON course.cid = sc.cid
INNER JOIN student ON sc.sid = student.sid;
