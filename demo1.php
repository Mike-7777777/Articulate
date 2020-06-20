<?php

$id = $_GET["project_id"];

//模拟在数据库中搜索该PROJECT ID的过程，
//如果找到相应ID则提取，如果找不到则返回默认四张“云”图。
if($id=="av001f"){
	$_ImgInSql = [
		0 => "img/r61.jpg",
		1 => "img/r62.jpg",
		2 => "img/r63.jpg",
		3 => "img/r64.jpg",
		4 => "img/r65.jpg",
		5 => "img/r66.jpg",
		6 => "img/r67.jpg",
		7 => "img/r68.jpg",
	];
	$projectName="项目的名字";
}else{
	$_ImgInSql = [
		0 => "img-1.jpeg",
		1 => "img-2.jpeg",
		2 => "img-3.jpeg",
		3 => "img-4.jpeg",
	];
}
//模拟将本地数组赋值为提取出来的数组。
$mikePicArr = $_ImgInSql;
// var_dump($mikePicArr);
//获得图片数量
$n_pic=sizeof($mikePicArr);
$title_img=$mikePicArr[0];


// $htmlString = <<< htmlString
// htmlString
// 是多行字符串语法，不懂百度
$htmlString = <<< htmlString
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta charset="utf-8">
	<title>$projectName</title>    
	<link rel="shortcut icon" href="images/verseabitroundlogo.png" type="image/x-icon" />
    <link href="https://necolas.github.io/normalize.css/8.0.1/normalize.css" rel="stylesheet">
    <link href="styles/bootstrap.min.css" rel="stylesheet">
    <link href="styles/style.css" rel="stylesheet">
    <link href="styles/show2.css" rel="stylesheet">
    <link href="https://fonts.font.im/css?family=Open+Sans" rel="stylesheet" type="text/css">
<style>
	#title {
		background-image: url("$title_img");
		z-index:2;
  }
  
  	#title h1 {
   		transform: translateZ(.25px) scale(.75);
		transform-origin: 50% 100%;
	}
htmlString;
echo $htmlString;

// for($i=1;$i<$n_pic +1;$i++){
// 	$pic_row=$i-1;
//     echo "#slide$i{
// 		background-image: url('$mikePicArr[$pic_row]');
// 		transform: translateZ(-1px) scale(2);
// 	  }";   
// }
for($i=0;$i<$n_pic;$i++){
	$pic_row=$i+1;
	if($pic_row % 2 == 0){//偶数
		echo "#slide$pic_row {
			background-image: url('$mikePicArr[$i]');
			z-index: 2;
		  }";  
	}else{
		echo "#slide$pic_row {
			background-image: url('$mikePicArr[$i]');
			transform: translateZ(-1px) scale(2);
		  }";  
	}
}

$n_1 = $n_pic+1;
echo "#slide$n_1 {
	background: #222;
  }";

$htmlString = <<< htmlString
</style>
</head>

<body>

<nav class="top-navi navbar-fixed-top container-fluid navbar navbar-expand-lg navbar-dark bg-dark">
<a class="navi-logo" href="https://www.behance.com/">
	<img class="my-logo" src='images/navlogow.svg' alt="logo">
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
<div id="title" class="slide header">
<h1>Pure CSS Parallax</h1>
</div>

htmlString;
echo $htmlString;


for($i=1;$i<$n_pic +1;$i++){
    echo "<div id='slide$i' class='slide'>
	<div class='title'>
	  <h1>Slide $i</h1>
	  <p>Lorem ipsum dolor sit amet, in velit iudico mandamus sit, persius dolorum in per, postulant mnesarchum cu nam. Malis movet ornatus id vim, feugait detracto est ea, eam eruditi conceptam in. Ne sit explicari interesset. Labores perpetua cum at. Id viris docendi denique vim.</p>
	</div>
  </div>";   
}

$htmlString = <<< htmlString
<div id="slide$n_1" class="slide header">
    <h1>The End</h1>
</div>
<script src="scripts\jquery-3.5.0.js"></script>
<script src="scripts\main.js"></script>
</body>

</html>
htmlString;
echo $htmlString;

