<?php
    include_once 'conn.php';
    mysqli_select_db($conn,'users');
    session_start();
    
    if(isset($_SESSION['user_info']['status']) && $_SESSION['user_info']['status']){

        $uid = $_SESSION['user_info']['userid'];

        if(isset($POST['save_change'])){
    
            $email = $_POST['email'];
            $username = $_POST['username'];
            $name = $_POST['name'];
            $country = $_POST['country'];
            $city = $_POST['city'];
            $phone_number = $_POST['phone'];
        
            $sql = "ALTER TABLE user ADD COLUMN photo mediumblob";
            $result = mysqli_query($conn, $sql);
            if(!$result)
                exit("failed to add");
        
            $image = mysqli_real_escape_string ($conn, file_get_contents($_FILES['photo']['tmp_name']));
            $sql = "UPDATE user SET photo='$image' WHERE id='$uid'";
            if(mysqli_query($conn, $sql)){
                echo "modify success!";
                header("Location: https://www.baidu.com");
            }else
                echo "failed".mysqli_query_error();
            
        }

        $sql = "SELECT * FROM user WHERE id = '$uid'";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($result);
         
            
        
 ?>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <meta charset="utf-8">
    <title>Articulate :: Best of Articulate </title>
    <link rel="shortcut icon" href="images/images/verseabitroundlogo.png" type="image/x-icon" />
    <link href="https://necolas.github.io/normalize.css/8.0.1/normalize.css" rel="stylesheet">
    <link href="styles/bootstrap.min.css" rel="stylesheet">
    <link href="styles/login.css" rel="stylesheet">
    <link href="styles/profile.css" rel="stylesheet">
    <link href="styles/style.css" rel="stylesheet">
    <link href="styles/editprofile.css" rel="stylesheet">
    <link href="https://fonts.font.im/css?family=Open+Sans" rel="stylesheet" type="text/css">
</head>

<body class="body">

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
          <button class="nav-item" href="https://www.Discover.com/">Discover</button>
          <!-- Upload可以做成蓝色按钮 -->
          <button class="nav-item" href="https://www.Upload.com/">Upload</button>
          <button class="nav-item nav-item-active" href="https://www.Upload.com/">Profile</button>
      </div>
      <div class="navi-right">
          <button class="nav-item">Search</button>
          <button class="nav-item">Messages</button>
          <button class="nav-item">
            <div class="user-profile">
            <a href="#profile">
              <div class="userhead-s">
                <img src="images/images/userhead.jpg" alt="userhead">
              </div>
            </a>
          </div>
          </button>
      </div>
  </nav>
  </div>
  <div class="mainbody container-fluid">
    <div class="wrapper">
  <div class="profile">
    <div class="content">
      <h1>Edit Profile</h1>

      <form action="" method="post"> <!-- 服务器地址 表单信息-->
        <!-- Photo -->
        <fieldset>
          <div class="grid-35">
            <label for="avatar">Your Photo</label>
          </div>
          <div class="grid-65">
            <span class="photo" title="Upload your Avatar!"></span>
            <input type="file" class="btn" name="photo"/>
          </div>
        </fieldset>
        <fieldset>
          <div class="grid-35">
            <label for="fname">Username</label>
          </div>
          <div class="grid-65">
            <input type="text" id="username" name="username" tabindex="1" value="<?php echo $row['username']?>"/> <!--value后端数据 -->
          </div>
        </fieldset>
        <fieldset>
          <div class="grid-35">
            <label for="lname">Name</label>
          </div>
          <div class="grid-65">
            <input type="text" id="name" name="name" tabindex="2" value="<?php echo $row['name']?>"/> <!--value后端数据 -->
          </div>
        </fieldset>
        <!-- Description about User -->
        <fieldset>
          <div class="grid-35">
            <label for="description">About you</label>
          </div>
          <div class="grid-65">
            <textarea name="comment" id="" cols="30" rows="auto" tabindex="3"></textarea>
          </div>
        </fieldset>

        <fieldset>
          <div class="grid-35">
            <label for="email">Email Address</label>
          </div>
          <div class="grid-65">
            <input type="email" id="email" name="name" tabindex="6" value="<?php echo $row['email']?>"/> <!--value后端数据 -->
          </div>
        </fieldset>
        <fieldset>
          <div class="grid-35">
            <label for="country">Country</label>
          </div>
          <div class="grid-65">
            <input type="text" id="country" name="country" tabindex="5" value="<?php echo $row['country']?>" /> <!--value后端数据 -->
          </div>
        </fieldset>
        <fieldset>
          <div class="grid-35">
            <label for="school">City</label>
          </div>
          <div class="grid-65">
            <input type="text" id="city" name="city" tabindex="9" value="<?php echo $row['city']?>"/> <!--value后端数据 -->
          </div>
        </fieldset>
        <!-- Company Name -->
        <fieldset>
          <div class="grid-35">
            <label for="company">Mobile</label>
          </div>
          <div class="grid-65">
            <input type="text" id="company" name="phone" tabindex="10" value="<?php echo $row['Mobilephone']?>"/> <!--value后端数据 -->
          </div>
        </fieldset>

        <fieldset>
          <input type="button" class="Btn cancel" value="Cancel" />
          <input type="submit" class="Btn" name="save_change" value="Save Changes" />
        </fieldset>

      </form>
    </div>
  </div>
</div>
  </div>


<script src="scripts\jquery-3.5.0.js"></script>
<script src="scripts\profile.js"></script>
<script src="scripts\main.js"></script>
<script src="scripts\editprofile.js"></script>
</body>

</html>

<?  
}
    else
    header("Location: http://localhost/web/login.php");
   mysqli_close($conn);
?>