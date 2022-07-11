<?php
// 邮箱配置
define("c_smtp","输入smtp服务器地址");
define("c_email","输入您的邮箱地址");
define("c_emailpass","输入授权密码就是smtp的密码");

function send_getpass_email($user_email,$user_name,$time,$url){
	$smtpserver = "输入smtp服务器地址";
	$smtpserverport = 994;//输入smtp服务器端口 普通25
	$smtpusermail ="输入您的邮箱地址";
$smtpemailto = $user_email;
	$smtpuser = "输入您的邮箱地址";
	$smtppass = "输入授权密码就是smtp的密码";
	$mailtitle = "您的密码找回信(重要)";
	$mailcontent = $user_name."：<br />您在".$time."提交了找回密码请求，注意该链接有效期为：20分钟<Br>请点击下面的链接，按流程进行密码重设。<br /><a href='".$url."' target='_blank'>".$url."</a><br />如果上面的链接无法点击，您也可以复制链接，粘贴到您浏览器的地址栏内，然后按“回车”打开重置密码页面。<br /><br />本邮件为系统自动发送，请勿回复！<a href='http://jz.yhy123.top/'>记账管理系统</a>";
	$mailtype = "HTML";
	$smtp = new Smtp($smtpserver,$smtpserverport,true,$smtpuser,$smtppass);
	$smtp->debug = false;
	$state = $smtp->sendmail($smtpemailto, $smtpusermail, $mailtitle, $mailcontent, $mailtype);
	return $state;
}
?>
