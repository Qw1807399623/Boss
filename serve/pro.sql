SET NAMES UTF8;
DROP DATABASE IF EXISTS boss;
CREATE DATABASE boss CHARSET=UTF8;
USE boss;
CREATE TABLE boss_pro(
    /*公司ID*/
    pid INT PRIMARY KEY AUTO_INCREMENT,
    /*公司名称*/
    pname VARCHAR(128),
    /*职位*/
    position VARCHAR(128),
    /*地区*/
    city VARCHAR(128),
    /*工作经验*/
    age VARCHAR(128),
    /*学历*/
    education VARCHAR(128),
    /*最低工资*/
    minsal INT,
    /*最高工资*/
    maxsal INT,
    /*规模*/
    many INT,
    /*融资*/
    financing VARCHAR(128),
    /*图片路径*/
    jpg VARCHAR(128)
);
INSERT INTO boss_pro VALUES
(NULL,"健客网","web前端","广州","3-5年","本科",10,13,50,"A轮","jianke.jpg"),
(NULL,"漫道科技","web前端","广州","3-5年","本科",14,15,100,"B轮","mandao.jpg"),
(NULL,"优点网络科技","web前端","广州","3-5年","大专",5,7,90,"C轮","youdian.jpg"),
(NULL,"锦江酒店","web前端","广州","3-5年","本科",15,17,40,"未融资","jinjiang.jpg"),
(NULL,"广州视睿","web前端","广州","3-5年","本科",13,16,80,"天使轮","shirui.jpg"),
(NULL,"数块科技","web前端","广州","3-5年","本科",15,16,20,"D轮","shukuai.jpg"),
(NULL,"南瑞信通","web前端","广州","3-5年","大专",17,19,40,"已上市","nanrui.jpg"),
(NULL,"图匠数据","web前端","广州","3-5年","本科",15,20,150,"不需要融资","tujiang.jpg");

/*********注册表*************/
CREATE TABLE boss_reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(15),
    upwd VARCHAR(32)
);

/***********测试*********/
INSERT INTO boss_reg VALUES(NULL,13178599893,"123456");
