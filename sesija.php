<?php
include 'baza/user.php';
session_start();

if(!isset($_SESSION['user'])){
    $user = new User();
    $user->ulogovan = false;
    $_SESSSION['user'] = $user;
}
 ?>