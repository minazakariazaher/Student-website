<?php
 include("DB.php");
 $db=new DataBase("Info");
$q= "create table Information (
FirstName varchar(50) not null ,
LastName varchar(50) not null ,
Email varchar(50) NOT NULL PRIMARY KEY,
pass int(15));";
 $db->myExec($q);
?>
