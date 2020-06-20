<?php
	//连接数据库
	include 'conn.php';
	mysqli_select_db($conn, "users");
	
	//会话开始
	session_start();
	$msg = ""; 
	
	if(isset($_SESSION['user_info']['status']) && $_SESSION['user_info']['status']){
		$msg = "Welcome back!";
		header("Refresh: 5; url=http://localhost/web/index_loged.html");
	}
	else{
		if(isset($_POST['login'])){				
			$email = $_POST['user'];
			$password = $_POST['password'];
		
			//验证输入是否为空
			if($email == "" || $password == ""){
				$msg = "Please input email address and password";
				goto branchEnd;
				}
	
			//验证用户是否已创建
			$sql = "SELECT * FROM user WHERE email = '" .$email. "'";
			$result = mysqli_query($conn, $sql);
			if(!$result || mysqli_num_rows($result) == 0){
				$msg =  "account doesn't exist";
				goto branchEnd;
				}
	
			//验证密码是否正确
			$sql = "SELECT id, username, password FROM user WHERE email = '" .$email. "'";
			$result = mysqli_query($conn, $sql);
			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
			$password = md5($password);
			if(!$row || $password != $row['password']) 
				$msg =  "wrong password";
			else {
				$_SESSION['user_info'] = array(
					'userid' => $row['id'],
					'username' => $row['username'],
					'status' => true,
					);
				setcookie(session_name(), session_id(), time()+30);
				header("Location: http://localhost/web/index_loged.html");
				}
				//goto终点
				branchEnd:
			}
		}
		//登录表格
		if($msg != "Welcome back!")
			$msg = $msg.<<<EOF
			<form class="bodydiv textcenter" action="" method="post">
				<lable class="table">
					Username:
				</lable>
				<input class="input-block" type="text" name="user" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
				</input>
				<lable class="table">
					Password:
				</lable>
				<input class="input-block" type="password" name="password" value="" />
					<a  href="http://localhost/web/sendmail.php">
						Forgot password?
					</a>
				<input type="submit" name="login" value="Sign in" tabindex="3" class="btn" data-disable-with="Signing in…">
			</form>
			<p class="pdiv textcenter">
				Create an account
			<a href="http://localhost/web/signup.php">here.</a>
			</p>
		
EOF;

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
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
						<h1>Sign in to Articulate</h1>
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
	//退出登录 
	function logout(){  
		unset($_SESSION['user_info']);  
		if(!empty($_COOKIE['session_name()'])){  
			setcookie("session_name()", null, time()-3600*24*365);  
			}  
		} 
	mysqli_close($conn);
?>

