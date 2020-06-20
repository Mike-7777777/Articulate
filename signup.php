<?php
	include_once ('conn.php');
	mysqli_select_db($conn, "users");
	
	if(isset($_POST['sign_up'])){	
		$email = $_POST['email'];
		$username = $_POST['username'];
		$pwd = $_POST['password'];
		$pwd2 = $_POST['confirm_password'];
		$name = $_POST['name'];
		$country = $_POST['country'];
		$state = $_POST['state'];
		$city = $_POST['city'];
		$phone_number = $_POST['phone'];
	
		//创建表格
		$sql = "CREATE TABLE IF NOT EXISTS user( 
								id INT(15) UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
								email VARCHAR(60) ,
								username VARCHAR(60) ,
							    password VARCHAR(100) ,
								name VARCHAR(60) ,
								country VARCHAR(60) ,
								state VARCHAR(60) ,
								city VARCHAR(60) ,
								Mobilephone INT(30),
								getpasstime int(10)
								)";
		mysqli_query($conn, $sql);
	
		//1.检测输入是否为空
		if(empty($email) || empty($username) || empty($pwd) 
			|| empty($pwd2) || empty($name) || empty($country
			|| empty($state) || empty($city) || empty($phone_number))){
			echo "Complete all information, pls";
			exit;}
			
		//2.检测邮箱是否已被注册
		$sql = "SELECT * FROM user WHERE email = '{$email}' ";
		$result = mysqli_query($conn, $sql);
		$num = mysqli_num_rows($result);
		if($num > 0){
			echo "account has been exist";
			exit;
		}

		//3.检验两次密码是否一致
		if($pwd != $pwd2){
			echo "Password inconsistency";
			exit;
			}
		//4.接着检验密码格式是否符合格式：同时包含字母数字且长度大于6
		else{
				if(!preg_match_all("/^(?=.*?[a-zA-Z])(?=.*?[0-9]).{6,}$/", $pwd)){
					echo "The passwod should contain number and alphabet, and should longer than 6 bits.".'<hr>';
					exit;
				}	
			}

		//保存用户数据到数据库		
		$pwd = MD5($pwd);
		$sql = "INSERT INTO user (email, password, username, name, country, state, city, Mobilephone) 
				VALUES('$email', '$pwd', '$username', '$name', '$country', '$state', '$city', '$phone_number')";	
		if(mysqli_query($conn, $sql)){
			header("Location: login.php");
			}else{
				echo "register failed.".mysqli_error($conn);
				exit;
				}		
		}
?>

<!DOCTYPE html>
<html lang="en-US">
<head>
  <meta charset="utf-8">
  <title>Join</title>
  <script>
    window.loadingStartTime = new Date()
  </script>
  <script src="scripts/jquery-3.5.0.js"></script>
  <script src="scripts/main.js"></script>
  <link rel="shortcut icon" href="images/logo.ico" type="image/x-icon">
  <link href="styles/style.css" rel="stylesheet">
  <link rel="stylesheet" href="styles/top.css">
  <link rel="stylesheet" href="styles/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css2?family=Ruda:wght@500&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">
  
  <link rel="stylesheet" href="styles/signup.css">
  <link rel="stylesheet" href ="styles/style.css">
</head>

<body class="scoll_dis">
    <div class="top-con">
		<div class="top-announce alert">
			<div class="inline-box">We are committed to supporting our community with free access to </div>
			<a href="https://www.example.com/">Adobe Portfolio</a>
			<div class="inline-box"> and </div>
			<a href="https://www.google.com/">Adobe Talent</a>
			<div class="inline-box">. Learn More</div>
			<a href="https://www.google.com/">Here</a>
			<a href="#" class="close top-x" data-dismiss="alert" aria-hidden="true">&times;</a>
		</div>
		<nav class="top-navi navbar-fixed-top container-fluid navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navi-logo" href="https://www.behance.com/">
				<img class="my-logo" src="images/images/navlogow.svg" alt="logo">
			</a>
			<div class="navi-mid">
				<button class="nav-item nav-item-active" href="https://www.Discover.com/">Discover</button>
				<button class="nav-item" href="https://www.Upload.com/">Upload</button>
			</div>
			<div class="navi-right">
				<button class="nav-item">Search</button>
				<button class="nav-item">Sign Up</button>
			</div>
		</nav>
	</div>
    
    <div class="">
		<div class="header">
			<div class="information">
				<img  class="flower" id="flower1" src="images/flower.JPG" height="95" width="80" alt="flower">
				<h1 class="textwelcome" >Welcome to Join</h1>
				<img  class="flower" id="flower2" src="images/flower.JPG" height="95" width="80" alt="flower">
			</div>
		</div>
		<div>
			
			<form class="information2 margin" action="signup.php" method="post">
				<div class="information margin">
					<div class="left">
						<p>Email:</p>
						<p>Username:</p>
						<p>Password:</p>
						<p>Confirm Password:</p>
						<p>NAME:</p>
						<p>Country:</p>
						<p>State/Province:</p>
						<p>City:</p>
						<p>Mobile:</p>
					</div>
					<div class="right">
						<input type="text" class="input-block" name="email" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
						<input type="text" class="input-block" name="username" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
						<input type="password" class="input-block" name="password" value="">
						<input type="password" class="input-block" name="confirm_password" value="">
						<input type="text" class="input-block" name="name" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
						<input type="text" class="input-block" name="country" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
						<input type="text" class="input-block" name="state" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
						<input type="text" class="input-block" name="city" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
						<input type="text" class="input-block" name="phone" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
					</div>
				</div>
				<div class="register">
					<input id="register" type="submit" name= "sign_up"value="REGISTER">
				</div>
			</form>
		</div>
		<footer>
			<img id="cup" src="images/cup.JPG" height="75" width="67" alt="cup">
		</footer>
	</div>
    <script src="scripts/main.js" defer></script>

</body>
</html>
<?php
	mysqli_close($conn);
?>
