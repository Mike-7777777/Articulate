$(".thumb").hover(function () {
    $(this).find(".hover-mask").toggle(99);
});
$(".top-x").click(function () {
    $(".top-announce").toggle(99);
});

if(getCookie('PHPSESSID')!=0){
    $(".needlog").css('display','none');
}else{
    $(".loged").css('display','none');
}
// 按钮模拟a标签跳转
$(".search").click(function(){
    window.location.href="search.html";
  });
$(".signup").click(function(){
    window.location.href="signup.php";
  });
$(".messages").click(function(){
    window.location.href="messages.php";
  });
  