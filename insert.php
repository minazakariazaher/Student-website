<?php
include("DB.php");
$db=new DataBase("Info");
$q= "insert into Information(Email,pass) values
('mina@gamil.com','12345'),
('gorgre@gmail.com','23232323');";
 $db->myExec($q);
?>
