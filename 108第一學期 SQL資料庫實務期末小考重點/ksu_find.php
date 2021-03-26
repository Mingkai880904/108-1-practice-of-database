<?php

 $id=str_replace  ("'","''",$_REQUEST['id']);

  $db_host = "localhost";
  $db_name = "ksu_main.html";
  $db_table = "ksu_std_table";

 $db_user = "root";
 $db_password = "";
 $conn = mysqli_connect($db_host, $db_user, $db_password);
 if(empty($conn)){
	print  mysqli_error ($conn);
    die ("無法對資料庫連線！" );
	exit;
 } 

 if(!mysqli_select_db( $conn, $db_name)){
	die("資料庫不存在!");
	exit;
 }
 mysqli_set_charset($conn,'utf8');
 
 
    
$result = mysqli_query($conn,"SELECT * FROM $db_table where ksu_std_table = '$id'");
    



echo "<table border='1'>
<tr>
<th>系別</th>
<th>學生人數</th>
</tr>";

while($row = mysqli_fetch_array($result))
  {
  
  echo "<tr>";
  
  echo "<td>" . $row['系別'] . "</td>";
    echo "<td>" . $row['學生人數'] . "</td>";
	

  
  echo "</tr>";
  }
echo "</table>";

echo "1 record find";
?>

<form enctype="multipart/form-data"  method="post" action="ksu_main.html">
<input type="submit" name="sub" value="返回"/>
</form>