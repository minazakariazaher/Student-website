<?php
session_start();
function phpAlert() {
   echo '<script>if(confirm("Do u want to continue?")){window.location.href = "index.php"}</script>';
}

function wrongCredentials() {
   echo '<script>if(confirm("wrong email or password")){ window.location.href = "login.html"}</script>';
}
    $host="localhost";
    $user="root";  
    $pas="";
    $con= mysqli_connect($host,$user,$pas,"info");
   
        if(isset($_GET['email']))
        {
             $mail=$_GET['email'];
             $pass=$_GET['pass'];
        
             $result="select * from Information where Email='".$mail."' AND pass='".$pass."'limit 1";
             $row=mysqli_query($con,$result);
				
         if (mysqli_num_rows($row)==1)
         {
			 while($user=mysqli_fetch_array($row)){                                                 
				$_SESSION["grade"] = $user['grade'];
			 }
            phpAlert( );

         }
         else{
            wrongCredentials();
         }
        }
        
        else{
            echo "no parameters";
        }
       
    
    mysqli_close($con);
?>
