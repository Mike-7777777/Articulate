<?php
	
	//�������ݿ�
	include_once('conn.php');
	mysqli_select_db($conn, 'users');
	$msg = '';
	
if(isset($_POST['sendemail'])){
	require_once 'Mailer.php';
	// ʵ���� Mailer
	$mailer = new QQMailer(false);
	$email = $_POST['email'];
	$sent = false; //�жϸ����ʼ��Ƿ��ѷ���
	
	//�����ݿ��ȡ�˻���Ϣ
	$sql = "SELECT id,username,password FROM user WHERE email='$email'";
	$query = mysqli_query($conn, $sql);
	$num = mysqli_num_rows($query);
	
	//�ж������Ƿ���ע��
	if(!$num || $num == 0){
		$msg = "This email address didnt registe";
		goto branchEnd;
		}
	else{
		$row = mysqli_fetch_array($query);
		
		$getpasstime = time();		//��ȡ����ʱ��
		
		$userid = $row['id'];
		
		$token = md5($userid . $row['username'].$row['password']); //���ɱ�ʶ��������Կ
		
		$url = "http://localhost/web/resetpwd.php?email=".$email."&token=".$token;	//����URL
		
		$time = date('Y-m-d H:i');	//�ʼ�����
	
		$title = 'Reset Password';	// �ʼ�����
		
		$content =  "�װ���".$row['username']."��<br/>����".$time."�ύ���һ������������������������������ ����ť24Сʱ����Ч����<br/><a href='".$url."'target='_blank'>����˴�ǰ��</a>";
		$result = $mailer -> sendmail($email, $title, $content);
		
		//�ж��Ƿ��ͳɹ�
		if($result == 1){
			
			$msg =  'The system has sent an email to your mailbox'.'<br/>'.'Please login to your mailbox and reset your password in time!';
			
			$sql = "UPDATE user SET getpasstime= '$getpasstime' WHERE id='$userid'"; //�������ݷ���ʱ��
			
			mysqli_query($conn, $sql);
			
			goto End;
			
		}else
			$msg = "Failed to send email.";
		//goto
		branchEnd:
		}
	}
	//�ʼ�û�з��ͳɹ�	
	$msg = $msg.<<<EOF
			<form class="bodydiv textcenter" action="" method="post">  <!--�������ݸ���������ַ -->
				<lable class="table">
				Please enter your E-mail address.
				</lable>
				<input class="input-block" type="text" name="email" value=""  autocapitalize="off" autocorrect="off" autocomplete="username" autofocus="autofocus">
				</input>
				<input type="submit" name="sendemail" value="Next step" tabindex="3" class="btn" data-disable-with="Signing in��">
			</form>
EOF;

	//�ʼ����ͳɹ�
	End:
?>

<!DOCTYPE HTML>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="styles/top.css">
    <link rel="stylesheet" href="styles/login.css">
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <title></title>
  </head>
  <body class="body">
<div class="bigdiv">
  <div class="top textcenter">
    <div class="texttop textcenter logo">
      <img src="images/images/logo.png"/>
    </div>
    <div class="texttop textcenter">
      <h1>Reset Your Password</h1>
    </div>
  </div>
    <div class="tablecenter textcenter">
		

<?php
		echo $msg;
?>
      </div>

      </div>
  </body>
</html>

<?php
	mysqli_close($conn);
?>
