<?php
// 获取标签名
$tag = $_GET["tag_name"];

include "db_connnection.php";

$conn = OpenCon();

$sql = "SELECT user.userName, image.imagePath, image.imageTitle, image.imageLike, image.imageLook From t_user_info user left join t_image image on user.userId = image.userId ORDER BY RAND()";

$result = mysqli_query($conn, $sql);


?>
<!-- 需要的数据 -->
<!-- 1. 标签数据库
        - label 也就是标签名
        - imgUrl 标签背景图地址 
        - tagDescribe 标签描述-->
<!-- 2. 用户数据库
        - 头像保存地址
        - 用户名等等 -->
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta charset="utf-8">
    <title>Articulate :: {需替换label标签名 Best of Articulate} </title>
    <link rel="shortcut icon" href="images/verseabitroundlogo.png" type="image/x-icon" />
    <link href="https://necolas.github.io/normalize.css/8.0.1/normalize.css" rel="stylesheet">
    <link href="styles/bootstrap.min.css" rel="stylesheet">
    <link href="styles/style.css" rel="stylesheet">
    <link href="https://fonts.font.im/css?family=Open+Sans" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- 已修改为“我们致力于在这个艰难的时期通过免费的展览让人们呆在家里。” -->
    <div class="top-con">
        <div class="top-announce alert">
            <div class="inline-box">We are committed to keeping people at home with</div>
            <a href="https://www.example.com/">Articulate</a>
            <div class="inline-box"> during this</div>
            <a href="https://www.who.int/emergencies/diseases/novel-coronavirus-2019">difficult time</a>
            <div class="inline-box">. Learn More</div>
            <a href="https://fr.yahoo.com/topics/liste-coronavirus-france">Here</a>
            <a href="#" class="close top-x" data-dismiss="alert" aria-hidden="true">&times;</a>
        </div>
        <!-- 常驻固定导航栏 -->
        <nav class="top-navi navbar-fixed-top container-fluid navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navi-logo" href="https://www.behance.com/">
                <img class="my-logo" src="images\navlogow.svg" alt="logo">
            </a>
            <div class="navi-mid">
                <button class="nav-item nav-item-active" href="#">Discover</button>
                <button class="nav-item" href="upload.html">Upload</button>
            </div>
            <!-- 如果jscookie判断已登录隐藏needlog，否则隐藏loged -->
            <div class="navi-right needlog">
            <!-- 给按钮都添加了同名类 在JS中点击事件跳转到同名页面 -->
                <button class="nav-item search" >Search</button>
                <button class="nav-item signup" >Sign Up</button>
            </div>
            <div class="navi-right loged">
			<button class="nav-item search">Search</button>
			<button class="nav-item messages">Messages</button>
			<button class="nav-item">
				<div class="user-profile dropdown">
                    <!-- 点击头像跳转到profile.html -->
					<a href="profile.html">
						<div class="userhead-s">
							<img src="{需要传入用户头像地址images\userhead.jpg}" alt="userhead">
						</div>
                    </a>
                    <!-- 下拉菜单 分别为个人空间 设置 登出 -->
                    <div class="dropdown-content profile">
                        <a href="profile.html">Articulate Profile</a>
                    </div>
                    <div class="dropdown-content setting">
                        <a href="setting.html">Setting</a>
                    </div>
                    <div class="dropdown-content logout">
                        <a href="logout.php">Logout</a>
                    </div>
				</div>
			</button>
		</div>
        </nav>
    </div>

    <!-- 标签栏（改为数据库遍历） -->
    <!-- carouselWrap  -->
    <!-- 需要的数据：img src（标签背景图片地址），href（跳转地址）= label（标签名） -->
    <!-- label 是标签的名字 imgUrl是背景图地址 -->
    <ul class="NavigationBar-container">
        <?php
        while ($row = mysqli_fetch_array($result)) {
        ?>
            <li class="NavigationBar-navItem">
                <!--  -->
                <a href="/index?label_name=<?php echo $row["label"]; ?>" class="" tabindex="-1">
                    <div class="Tab-root">
                        <div class="Tab-container">
                            <div class="Tab-backgroundContainer"><img src="<?php echo $row["imgUrl"]; ?> 808w" alt="" class="Tab-backgroundImage"></div>
                            <div class="Tab-overlay"></div>
                            <div class="Tab-hoverOverlay"></div>
                            <h3 class="Tab-label"><?php echo $row["label"]; ?></h3>
                        </div>
                    </div>
                </a>
            </li>
        <?php
        }
        ?>
    </ul>
    <!-- Title of the page -->
    <!-- 获取本页的标签名然后填充页面 -->
    <div class="NavigationBar-categoryHeader">
        <div class="NavigationBar-categoryHeaderWrap">
            <h1 class="NavigationBar-categoryTitle">{需替换为label标签名 Best of Articulate}</h1>
            <h2 class="NavigationBar-categoryDescription">{需替换为标签描述 Projects featured today by our curators}</h2>
        </div>
    </div>
    <!-- ADs -->
    <div class="ad container-fluid">
        <a href="#">
            <img src="images\ad.png">
        </a>
    </div>
    <!-- Content -->
    <section class="case-thumbs">
        <div class="thumbs">
            <?php
            while ($row = mysqli_fetch_array($result)) {
            ?>
                <a class="thumb s-radius" id="1" href="demo1.php?project_id=<?php echo $row["imageTitle"]; ?>">
                    <i class="badge"></i>
                    <div class="picture">
                        <img src="<?php echo $row["imagePath"]; ?>" alt="Astrologia">
                        <div class="hover-mask">
                            <div class="card-title"><?php echo $row["imageTitle"]; ?></div>
                            <img class="mask-btm" src="images\halfd.png" alt="mask">
                        </div>
                    </div>
                    <div class="label">
                        <span class="title"><?php echo $row["userName"]; ?></span>
                        <span class="likes" likes="<?php echo $row["imageLike"]; ?>"></span>
                        <span class="looks" looks="<?php echo $row["imageLook"]; ?>"></span>
                    </div>
                </a>
            <?php
            }
            ?>
        </div>
    </section>
    <!-- Footers -->
    <nav class="footer-bar navbar-fixed-top container-fluid navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="footer-left">
            <!-- 每个页脚跳转到同名html文件 -->
            <a href="copyright.html"><button class="footer-item">copyright</button></a>
            <a href="privacy.html"><button class="footer-item">privacy</button></a>
            <a href="advertisements.html"><button class="footer-item" >advertisements</button></a>
            <a href="about.html"><button class="footer-item">about</button></a>
            <a href="contact_us.html"><button class="footer-item" >contact us</button></a>
        </div>
    </nav>
    <script src="scripts\js.cookie-2.2.1.min.js"></script>
    <script src="scripts\jquery-3.5.0.js"></script>
    <script src="scripts\main.js"></script>
    
</body>

</html>

<?php CloseCon($conn); ?>