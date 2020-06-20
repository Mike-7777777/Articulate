<?php

	function OpenCon()
	{
		$dbhost = 'localhost';
		$dbuser = 'test';
		$dbpasswd = 'test';
		$db = 'test';

		$conn = new mysqli($dbhost, $dbuser, $dbpasswd,$db) or die("Connect failed: %s\n". $conn -> error);

		return $conn;
	}

	function CloseCon($conn)
	{
		$conn -> close();
	}


