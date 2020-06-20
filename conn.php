<?php

	//连接数据库
	$conn = mysqli_connect("localhost", "test", "test")or die("Failed".mysqli_connect_error());
	
	//创建数据表
	mysqli_query($conn, "CREATE DATABASE IF NOT EXISTS users");
	
	
	
?>
