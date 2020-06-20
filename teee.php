<?php
$n_pic=8;
$mikePicArr=[
1,2,3,4,5,6,7,8
];
for($i=0;$i<$n_pic;$i++){
	$pic_row=$i+1;
    echo "#slide$pic_row {
		background-image: url('$mikePicArr[$i]');
		transform: translateZ(-1px) scale(2);
	  }";   
}

$n_1 = $n_pic+1;
echo "#slide$n_1 {
	background: #222;
  }";
?>