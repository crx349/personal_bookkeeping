<?php
ob_start();
session_start();
//基本设置
date_default_timezone_set("Asia/Shanghai");

// 检查PHP版本
if(PHP_VERSION<5.3){
	die("PHP版本小于5.3，请升级！");
}
define("siteName","记账管理系统");// 你网站的名称
define("SiteURL","https://baidu.com");// 你网站的地址
define("Multiuser","1");/*是否开启多用户，1为开启，0为禁用*/
// database
define("DB_HOST","localhost");//数据库地址
define("DB_USER","root");//数据库用户
define("DB_PASS","root");//数据库密码
define("DB_NAME","jz");//数据库名
define("DB_PORT","3306");//数据库端口
define("TABLE","jz_");//数据库前缀不用改