<?php
function phpAlert() {
   echo '
        <script>
          if(confirm("Welcome "))
             {
              window.location.href = "login.html"
             }
         </script>';

}

function wrongCredentials() {
   echo '
        <script>
          if(confirm("PLease enter anothor Mail"))
            {
                window.location.href = "signup.html"
            }
        </script>';
}
        
    $host="localhost";
    $user="root";  
    $pas="";
    $coni= mysqli_connect($host,$user,$pas,"info");
   
        //if(isset($_GET['email']))
        //{
             $first=$_GET['firstname'];
             $last=$_GET['lastname'];
             $mail=$_GET['email'];
             $pass=$_GET['pass'];
			 $grade=$_GET['grade'];	
             $q="insert into Information values('$first','$last','$mail','$pass','$grade')";
         
            if (mysqli_query($coni,$q))
         {
            phpAlert( );
         }
         else{
            wrongCredentials();
         }
        

    
    mysqli_close($coni);
?>
