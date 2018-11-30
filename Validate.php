<?php
    $username=$_POST['email'];
    $password=$_POST['pass'];
    
    mysql_connect ("localhost","root","");
    mysql_select_db("Info");
    
    $result=mysql_query("select * from Information where Email='$username' and pass='$password'")
                    or die ("Failed to query database".mysql_error());
    $row=mysql_fetch_array($result);
  if ($row['Email']==$username && $row['pass']==$password){
    echo ("welcome");
    
  }else
         echo ("Failed");
    
  
?>