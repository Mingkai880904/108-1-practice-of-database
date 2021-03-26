<?php

 

 $db_host = "localhost";
 $db_name = "ksu_database";
  $db_table = "advisor_detail";

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
 
 
    
$result = mysqli_query($conn,"SELECT * FROM $db_table");

echo "<table border='1'>
<tr>
<th>std_advisor</th>
<th>advisor_name</th>
<th>advisor_cell</th>
</tr>";

while($row = mysqli_fetch_array($result))
  {
  
  echo "<tr>";
  
  echo "<td>" . $row['std_advisor'] . "</td>";
    echo "<td>" . $row['advisor_name'] . "</td>";
  echo "<td>" . $row['advisor_cell'] . "</td>";

  
  echo "</tr>";
  }
echo "</table>";



 
      

 
 
 
 
 
 
 

?>

<form enctype="multipart/form-data"  method="post" action="ksu_main.html">
<input type="submit" name="sub" value="返回"/>
</form>