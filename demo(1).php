<?php
	include "db_connnection.php";

	$conn = OpenCon();
	
	$sql = "SELECT user.userName, image.imagePath, image.imageTitle, image.imageLike, image.imageLook From t_user_info user left join t_image image on user.userId = image.userId ORDER BY RAND()"; 
	
    $result = mysqli_query($conn, $sql);
    
    
?>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta charset="utf-8">
    <title>Articulate :: Best of Articulate </title>
    <link rel="shortcut icon" href="images/verseabitroundlogo.png" type="image/x-icon" />
    <link href="https://necolas.github.io/normalize.css/8.0.1/normalize.css" rel="stylesheet">
    <link href="styles/bootstrap.min.css" rel="stylesheet">
    <link href="styles/style.css" rel="stylesheet">
    <link href="https://fonts.font.im/css?family=Open+Sans" rel="stylesheet" type="text/css">
</head>
<style>
    .displaynone{
        display: none;
    }
</style>
<body>
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
          <img class="my-logo" src="images\navlogow.svg" alt="logo">
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
    
    <!-- carouselWrap  -->
  <ul class="NavigationBar-container">
    <li class="NavigationBar-navItem">
        <a href="/galleries/advertising" class="" tabindex="-1">
            <div class="Tab-root">
                <div class="Tab-container">
                    <div class="Tab-backgroundContainer"><img src="https://mir-s3-cdn-cf.behance.net/projects/404/e40a0492084539.Y3JvcCwyNDMyLDE5MDIsNjkyLDkw.jpg" srcset="https://mir-s3-cdn-cf.behance.net/projects/115/e40a0492084539.Y3JvcCwyNDMyLDE5MDIsNjkyLDkw.jpg 115w, https://mir-s3-cdn-cf.behance.net/projects/202/e40a0492084539.Y3JvcCwyNDMyLDE5MDIsNjkyLDkw.jpg 202w, https://mir-s3-cdn-cf.behance.net/projects/230/e40a0492084539.Y3JvcCwyNDMyLDE5MDIsNjkyLDkw.jpg 230w, https://mir-s3-cdn-cf.behance.net/projects/404/e40a0492084539.Y3JvcCwyNDMyLDE5MDIsNjkyLDkw.jpg 404w, https://mir-s3-cdn-cf.behance.net/projects/max_808/e40a0492084539.Y3JvcCwyNDMyLDE5MDIsNjkyLDkw.jpg 808w"
                            alt="" class="Tab-backgroundImage"></div>
                    <div class="Tab-overlay"></div>
                    <div class="Tab-hoverOverlay"></div>
                    <h3 class="Tab-label">Advertising</h3>
                </div>
            </div>
        </a>
    </li>
    <li class="NavigationBar-navItem  NavigationBar-evenNumbers ">
        <a href="/galleries/fine-arts" class="" tabindex="-1">
            <div class="Tab-root ">
                <div class="Tab-container ">
                    <div class="Tab-backgroundContainer "><img src="https://mir-s3-cdn-cf.behance.net/projects/404/4f6df794259253.Y3JvcCw5OTksNzgyLDAsMjY0.jpg" srcset="https://mir-s3-cdn-cf.behance.net/projects/115/4f6df794259253.Y3JvcCw5OTksNzgyLDAsMjY0.jpg 115w, https://mir-s3-cdn-cf.behance.net/projects/202/4f6df794259253.Y3JvcCw5OTksNzgyLDAsMjY0.jpg 202w, https://mir-s3-cdn-cf.behance.net/projects/230/4f6df794259253.Y3JvcCw5OTksNzgyLDAsMjY0.jpg 230w, https://mir-s3-cdn-cf.behance.net/projects/404/4f6df794259253.Y3JvcCw5OTksNzgyLDAsMjY0.jpg 404w, https://mir-s3-cdn-cf.behance.net/projects/max_808/4f6df794259253.Y3JvcCw5OTksNzgyLDAsMjY0.jpg 808w"
                            alt="" class="Tab-backgroundImage "></div>
                    <div class="Tab-overlay "></div>
                    <div class="Tab-hoverOverlay "></div>
                    <h3 class="Tab-label ">Fine Arts</h3>
                </div>
            </div>
        </a>
    </li>
    <li class="NavigationBar-navItem NavigationBar-evenNumbers">
        <a href="/galleries" class="router-link-exact-active router-link-active">
            <div class="Tab-root Tab-active">
                <div class="Tab-container">
                    <div class="Tab-backgroundContainer"><img src="https://mir-s3-cdn-cf.behance.net/projects/404/f74af195095185.Y3JvcCw4MDgsNjMyLDAsMA.png" srcset="https://mir-s3-cdn-cf.behance.net/projects/115/f74af195095185.Y3JvcCw4MDgsNjMyLDAsMA.png 115w, https://mir-s3-cdn-cf.behance.net/projects/202/f74af195095185.Y3JvcCw4MDgsNjMyLDAsMA.png 202w, https://mir-s3-cdn-cf.behance.net/projects/230/f74af195095185.Y3JvcCw4MDgsNjMyLDAsMA.png 230w, https://mir-s3-cdn-cf.behance.net/projects/404/f74af195095185.Y3JvcCw4MDgsNjMyLDAsMA.png 404w, https://mir-s3-cdn-cf.behance.net/projects/max_808/f74af195095185.Y3JvcCw4MDgsNjMyLDAsMA.png 808w"
                            alt="" class="Tab-backgroundImage"></div>
                    <div class="Tab-overlay"></div>
                    <div class="Tab-hoverOverlay"></div>
                    <h3 class="Tab-label">Best of Articulate</h3>
                </div>
            </div>
        </a>
    </li>
    <li class="NavigationBar-navItem  NavigationBar-evenNumbers ">
        <a href="/galleries/game-design" class="" tabindex="-1">
            <div class="Tab-root ">
                <div class="Tab-container ">
                    <div class="Tab-backgroundContainer "><img src="https://mir-s3-cdn-cf.behance.net/projects/404/1bd7ef92808219.Y3JvcCw4MDgsNjMyLDAsMA.jpg" srcset="https://mir-s3-cdn-cf.behance.net/projects/115/1bd7ef92808219.Y3JvcCw4MDgsNjMyLDAsMA.jpg 115w, https://mir-s3-cdn-cf.behance.net/projects/202/1bd7ef92808219.Y3JvcCw4MDgsNjMyLDAsMA.jpg 202w, https://mir-s3-cdn-cf.behance.net/projects/230/1bd7ef92808219.Y3JvcCw4MDgsNjMyLDAsMA.jpg 230w, https://mir-s3-cdn-cf.behance.net/projects/404/1bd7ef92808219.Y3JvcCw4MDgsNjMyLDAsMA.jpg 404w, https://mir-s3-cdn-cf.behance.net/projects/max_808/1bd7ef92808219.Y3JvcCw4MDgsNjMyLDAsMA.jpg 808w"
                            alt="" class="Tab-backgroundImage "></div>
                    <div class="Tab-overlay "></div>
                    <div class="Tab-hoverOverlay "></div>
                    <h3 class="Tab-label ">Game Design</h3>
                </div>
            </div>
        </a>
    </li>
    <li class="NavigationBar-navItem  NavigationBar-evenNumbers ">
        <a href="/galleries/sound" class="" tabindex="-1">
            <div class="Tab-root ">
                <div class="Tab-container">
                    <div class="Tab-backgroundContainer "><img src="https://mir-s3-cdn-cf.behance.net/projects/404/6a1c8b84857011.Y3JvcCwyNzYxLDIxNjAsNTQwLDA.jpg" srcset="https://mir-s3-cdn-cf.behance.net/projects/115/6a1c8b84857011.Y3JvcCwyNzYxLDIxNjAsNTQwLDA.jpg 115w, https://mir-s3-cdn-cf.behance.net/projects/202/6a1c8b84857011.Y3JvcCwyNzYxLDIxNjAsNTQwLDA.jpg 202w, https://mir-s3-cdn-cf.behance.net/projects/230/6a1c8b84857011.Y3JvcCwyNzYxLDIxNjAsNTQwLDA.jpg 230w, https://mir-s3-cdn-cf.behance.net/projects/404/6a1c8b84857011.Y3JvcCwyNzYxLDIxNjAsNTQwLDA.jpg 404w, https://mir-s3-cdn-cf.behance.net/projects/max_808/6a1c8b84857011.Y3JvcCwyNzYxLDIxNjAsNTQwLDA.jpg 808w"
                            alt="" class="Tab-backgroundImage "></div>
                    <div class="Tab-overlay "></div>
                    <div class="Tab-hoverOverlay "></div>
                    <h3 class="Tab-label ">Sound</h3>
                </div>
            </div>
        </a>
    </li>
</ul>
    <!-- Title of the page -->
    <div class="NavigationBar-categoryHeader">
        <div class="NavigationBar-categoryHeaderWrap">
            <h1 class="NavigationBar-categoryTitle">Best of Articulate</h1>
            <h2 class="NavigationBar-categoryDescription">Projects featured today by our curators</h2>
        </div>
    </div>
    <!-- ADs -->
    <div class="ad container-fluid">
      <a href="#">
        <img src="images\ad.png">
      </a>
    </div>
    <!-- Content -->
    <!-- <div class="container col-center-block ">
        <div class="Cover-wrapper-300 ProjectCoverNeue-wrapper-27j qa-cover-wrapper">
            <div class="content-img">
                <img sizes="404px" src="https://mir-s3-cdn-cf.behance.net/projects/404/c4a89836528373.Y3JvcCwxNDAwLDEwOTMsMCw3MjE.png" srcset="https://mir-s3-cdn-cf.behance.net/projects/115/c4a89836528373.Y3JvcCwxNDAwLDEwOTMsMCw3MjE.png 115w, https://mir-s3-cdn-cf.behance.net/projects/202/c4a89836528373.Y3JvcCwxNDAwLDEwOTMsMCw3MjE.png 202w, https://mir-s3-cdn-cf.behance.net/projects/230/c4a89836528373.Y3JvcCwxNDAwLDEwOTMsMCw3MjE.png 230w, https://mir-s3-cdn-cf.behance.net/projects/404/c4a89836528373.Y3JvcCwxNDAwLDEwOTMsMCw3MjE.png 404w, https://mir-s3-cdn-cf.behance.net/projects/max_808/c4a89836528373.Y3JvcCwxNDAwLDEwOTMsMCw3MjE.png 808w"
                    alt="Gyimah Gariba &amp; Victoria Siemer - Make It on Mobile" class="ProjectCoverNeue-image-1MZ js-cover-image">
            </div>

            <div class="content-overlay">
                <div class="content-overlay-top"></div>
                <div class="content-overlay-bottom"></div>
            </div>
        </div>
    </div> -->
<!-- content test -->
<section class="case-thumbs">
  <div class="thumbs">
  <?php
  while($row = mysqli_fetch_array($result)) {
  ?>
    <!-- <form method="get" action="demo1.php">
      <input class="displaynone" type="text" name="project_id" value="" readonly>
      <input class="displaynone" id="sub" type="submit">
    </form> -->
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
        <span class="likes"  likes="<?php echo $row["imageLike"]; ?>"></span>
        <span class="looks"  looks="<?php echo $row["imageLook"]; ?>"></span>
      </div>
    </a>
  <?php	
  } 
  ?>
  </div>
</section>
  <!-- <div id="spinner">
    Loading
  </div> -->
  <nav class="footer-bar navbar-fixed-top container-fluid navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="footer-left">
        <button class="footer-item" href="https://www.Discover.com/">copyright</button>
        <button class="footer-item" href="https://www.Upload.com/">privacy</button>
        <button class="footer-item" href="https://www.Upload.com/">advertisements</button>
        <button class="footer-item" href="https://www.Upload.com/">about</button>
        <button class="footer-item" href="https://www.Upload.com/">contact us</button>
    </div>
  </nav>
    <script src="scripts/jquery-3.5.0.js"></script>
    <script src="scripts/main.js"></script>
    <script src="scripts/test.js"></script>
</body>

</html>

<?php CloseCon($conn); ?>
