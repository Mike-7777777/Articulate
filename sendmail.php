<?php
	
	//连接数据库
	include_once('conn.php');
	mysqli_select_db($conn, 'users');
	$msg = '';
	
if(isset($_POST['sendemail'])){
	require_once 'Mailer.php';
	// 实例化 Mailer
	$mailer = new QQMailer(false);
	$email = $_POST['email'];
	$sent = false; //判断改密邮件是否已发送
	
	//从数据库获取账户信息
	$sql = "SELECT id,username,password FROM user WHERE email='$email'";
	$query = mysqli_query($conn, $sql);
	$num = mysqli_num_rows($query);
	
	//判定邮箱是否已注册
	if(!$num || $num == 0){
		$msg = "This email address didnt registe";
		goto branchEnd;
		}
	else{
		$row = mysqli_fetch_array($query);
		
		$getpasstime = time();		//获取操作时间
		
		$userid = $row['id'];
		
		$token = md5($userid . $row['username'].$row['password']); //生成标识，类似秘钥
		
		$url = "http://localhost/web/resetpwd.php?email=".$email."&token=".$token;	//设置URL
		
		$time = date('Y-m-d H:i');	//邮件标题
	
		$title = 'Reset Password';	// 邮件内容
		
		$content =  "亲爱的".$row['username']."：<br/>您在".$time."提交了找回密码请求。请点击下面的链接重置密码 （按钮24小时内有效）。<br/><a href='".$url."'target='_blank'>点击此处前往</a>";
		$result = $mailer -> sendmail($email, $title, $content);
		
		//判定是否发送成功
		if($result == 1){
			
			$msg =  'The system has sent an email to your mailbox'.'<br/>'.'Please login to your mailbox and reset your password in time!';
			
			$sql = "UPDATE user SET getpasstime= '$getpasstime' WHERE id='$userid'"; //更新数据发送时间
			
			mysqli_query($conn, $sql);
			
			goto End;
			
		}else
			$msg = "Failed to send email.";
		//goto
		branchEnd:
		}
	}
	//邮件没有发送成功	
	$msg = $msg.<<<EOF
			<form class="bodydiv textcenter" action="" method="post">  <!--传送数据给服务器地址 -->
				<lable class="table">
				Please enter your E-mail address.
				</lable>
				<input class="input-block" type="text" name="email" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
				</input>
				<input type="submit" name="sendemail" value="Next step" tabindex="3" class="btn" data-disable-with="Signing in…">
			</form>
EOF;

	//邮件发送成功
	End:
?>

<!DOCTYPE HTML>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/top.css">
    <link rel="stylesheet" href="styles/login.css">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <title></title>
  </head>
  <body class="body">
<div class="bigdiv">
  <div class="top textcenter">
    <div class="texttop textcenter logo">
      <img src="images/images/logo.png"/>
    </div>
    <div class="texttop textcenter">
      <h1>Reset Your Password</h1>
    </div>
  </div>
    <div class="tablecenter textcenter">
		

<?php
		echo $msg;
?>
      </div>

      </div>
  </body>
</html>

<?php
	mysqli_close($conn);
?>
