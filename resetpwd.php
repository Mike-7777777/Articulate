<?php
	//
	include_once('conn.php');
	mysqli_select_db($conn, 'users');
	$msg = '';
	
	if(isset($_POST['reset_pwd'])){
		
		$pwd = $_POST['password'];
		$pwd2 = $_POST['confirm_password'];
		
		//1.?????????????
		if(empty($pwd) || empty($pwd2))
			exit("Complete all information, pls");
			
		//2.??????????????????
		if($pwd != $pwd2)
			exit("Password inconsistency");
		else{
		//?????????????????????????????????????????6
			if(!preg_match_all("/^(?=.*?[a-zA-Z])(?=.*?[0-9]).{6,}$/", $pwd))
			exit("The passwod should contain number and alphabet, and should longer than 6 bits.");
			}			
			
		$sql = "UPDATE user SET password='$pwd' WHERE email='$email'";	
		
		if(mysqli_query($conn, $sql))
			header("Location: http://localhost/web/login.php");
		else
			echo "reset failed.";
	}
	//???????
	$resetform = <<<EOF
				<form class="bodydiv textcenter" action="http://localhost/web/resetpwd.php" method="post">  <!--?????????????????? -->
				<lable class="table">
				Please enter your new password.
				</lable>
				<input class="input-block" type="password" name="password" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus"></input>
				<lable class="table">
				Please enter your password again.
				</lable>
				<input class="input-block" type="password" name="confirm_password" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus"></input>
				<a href = 'http://localhost/web/login.html'><input type="submit" name="reset_pwd" value="Finish" tabindex="3" class="btn" data-disable-with="Signing in??"></a>
				</form>	
EOF;
	
	//
	$token = stripslashes(trim($_GET['token'])); 
	$email = stripslashes(trim($_GET['email'])); 
	$sql = "select * from `user` where email='$email'"; 
	$query = mysqli_query($conn, $sql);
	$row = mysqli_fetch_array($query);
	
	if($row){ 
		$mark = md5($row['id'].$row['username'].$row['password']); 
		
		if($mark==$token){ 
			if(time()-$row['getpasstime']>24*60*60){
				$msg = 'The link has expired??'; 
			}
			else{
				//????δ?????????????
				$msg = $resetform; 
				}
		}else{
			$msg = 'Invalid link'; 	
			}	
		}else
			$msg = 'Wrong link'; 
				
?>

<!DOCTYPE html>
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


<?
	mysqli_close($conn);
?>
