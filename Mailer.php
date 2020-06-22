<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

class QQMailer
{
    public static $HOST = 'smtp.qq.com'; // QQ邮箱服务器地址
    public static $PORT = 465; // smtp 服务器的远程服务器端口
    public static $SMTP = 'ssl'; // 使用 ssl 加密方式登录
    public static $CHARSET = 'GB2312'; // 设置发送的邮件的编码 UTF-8对QQ邮箱中文乱码无效, GB2312有效

    private static $USERNAME = '****@Articulate.com'; // 授权登录的账号
    private static $PASSWORD = '****'; // 权登录的密码
    private static $NICKNAME = '****'; // 发件人的昵称

    /**
     * QQMailer constructor.
     * @param bool $debug [����ģʽ]
     */
    public function __construct($debug = false)
    {
        $this->mailer = new PHPMailer();
        $this->mailer->SMTPDebug = $debug ? 1 : 0;
        $this->mailer->isSMTP(); // 使用 SMTP 方式发送邮件
    }

    /**
     * @return PHPMailer
     */
    public function getMailer()
    {
        return $this->mailer;
    }

    private function loadConfig()
    {
        /* Server Settings  */
        $this->mailer->SMTPAuth = true; // 启用 SMTP 认证
        $this->mailer->Host = self::$HOST; // SMTP 服务器地址
        $this->mailer->Port = self::$PORT; // 远程服务器端口号
        $this->mailer->SMTPSecure = self::$SMTP; // 登录认证方式
        /* Account Settings */
        $this->mailer->Username = self::$USERNAME; // SMTP 登录账号
        $this->mailer->Password = self::$PASSWORD; // SMTP 登录密码
        $this->mailer->From = self::$USERNAME; // 发件人邮箱地址
        $this->mailer->FromName = self::$NICKNAME; //  发件人昵称（任意内容）
        /* Content Setting  */
        $this->mailer->isHTML(true); // 邮件正文是否为 HTML
        $this->mailer->CharSet = self::$CHARSET; // 发送的邮件的编码
    }

    /**
     * Add attachment
     * @param $path [附件路径]
     */
    public function addFile($path)
    {
        $this->mailer->addAttachment($path);
    }


    /**
     * Send Email
     * @param $email [发件人]
     * @param $title [标题]
     * @param $content [内容]
     * @return bool [是否发送成功]
     */
    public function sendmail($email, $title, $content)
    {
        $this->loadConfig();
        $this->mailer->addAddress($email); // 收件人邮箱
        $this->mailer->Subject = $title; // 邮件主题
        $this->mailer->Body = $content; // 邮件信息
        return (bool)$this->mailer->send(); // 发送邮件
    }
}
