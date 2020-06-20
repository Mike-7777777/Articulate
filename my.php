<?php
$mikecolor="green";
$mike_title="已改的标题";
$mike_p_class="mike_p_class_change";
$my_n=5;

// $htmlString = <<< htmlString
// htmlString
// 是多行字符串语法，不懂百度
$htmlString = <<< htmlString
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<style>
	.mike_p_class{
		color:red;
	}
	.mike_defalut{
		font-size:50px;
	}
htmlString;
echo $htmlString;
$n_1=2;
for($i=0;$i<1;$i++){
    echo ".mike_p_class_change{
		color:$mikecolor;
    }";   
    echo "#slide$n_1 {
        background: #222;
      }";
}


$htmlString = <<< htmlString
</style>
<body>
<h1 id="slide2">$mike_title</h1>
<p class="$mike_p_class mike_defalut">我的第一个段落。</p>

</body>
</html>
htmlString;
echo $htmlString?>