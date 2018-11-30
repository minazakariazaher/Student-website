<?php
include('config.php');
session_start();
echo '
	<html>
	   <body background="s.jpg" style="
					background-repeat: no-repeat;
					background-size: 100%;
					margin-left: 650;
					margin-top: 200;">
	   
	   <table border=2>
		<tr>
			<th>File Name</th>
			<th>Link</th>
		</tr>
		';
		$grade = $_SESSION["grade"];
		$q="select * from files where grade_id = $grade";
        $sql=mysqli_query($connection,$q);
		if (mysqli_num_rows($sql)>0){
			while($row=mysqli_fetch_array($sql)){ 
				echo '
				<tr>
					<td>'.$row['name'].'</td>
					<td><a href="'.$row['path'].'">'.$row['path'].'</a></td>
				</tr>
				';
			}
		}
		
	echo'
	   </table>
			<form action="upload.html">
				<input type="submit" value="upload" style="    
									margin-left: 34px;
									margin-top: 11px;" />
			</form>
	   </body>
	</html>
	';
?>