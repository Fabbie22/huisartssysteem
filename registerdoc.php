<?php

require_once("./connection.php");

$dbh = dbcon();

$data = $_POST;

$email = $data['email'];
$username = $data['user_name'];
$password = password_hash($data['password'], PASSWORD_DEFAULT);

$insertinlog = $dbh->prepare("INSERT INTO account (user_name, password, email) VALUES (:user_name, :password, :email)");

$insertinlog->execute(array(
  'user_name' => $username,
  'password' => $password,
  'email' => $email
));

?>