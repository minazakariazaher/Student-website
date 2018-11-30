<?php
session_start();
include('config.php');
	if(isset($_POST['course_name'])){
			echo $_POST['course_name'];
	}

   if(isset($_FILES['file'])){
      $errors= array();
      $file_name = $_FILES['file']['name'];
      $file_tmp =$_FILES['file']['tmp_name'];
	  $tmp = explode('.',$_FILES['file']['name']);
      $file_ext=strtolower(end($tmp));	  
	  $path_parts = pathinfo($file_name);
	  //rename the file with current timestamp
	  $image_path = $path_parts['filename'].'_'.time().'.'.$path_parts['extension'];
      $course_name = $_POST['course_name'];
      if(empty($errors)==true){
		 $full_path = "files/".$image_path;
         move_uploaded_file($file_tmp,$full_path);
         $grade = $_SESSION["grade"];
		 $q="insert into files values('','$full_path','$grade','$course_name')";
         $sql=mysqli_query($connection,$q);
         if ($sql){
			  header("Location: index.php");
         }
         else{
			 echo "failed";
         }
      }else{
		  echo "failed";
         print_r($errors);
      }
   }
?>
