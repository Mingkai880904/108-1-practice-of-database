<?php
 $db_host = "localhost";
 $db_name = "ksu_database";
 $db_table = "ksu_cstd_table";

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
 }  mysqli_set_charset($conn,'utf8');
      
 echo "ksu_std_table 查詢結果,顯示如下:";   
 $result = mysqli_query($conn,"select ksu_std_department, count(*)
                               FROM ksu_std_table
                               where ksu_std_grade >= 59
                               group by ksu_std_department
                               HAVING  count(1) > 2 ");
 echo "<table border='1'>
 <tr>
   <th> 系別 </th>  <th>學生人數 </th> 
 </tr>";

 while($row = mysqli_fetch_array($result))
 {
   echo "<tr>";
   echo "<td>" . $row['ksu_std_department'] . "</td>";
   echo "<td>" . $row['count(*)'] .   "</td>";
   echo "</tr>";
 }
 echo "</table>";
 echo "records found!";
?> 
<form enctype="multipart/form-data"  method="post" action="ksu_select.html">
<input type="submit" name="sub" value="返回"/>
</form>