<?php
include 'conn.php';
header("Access-Control-Allow-Origin: *");
$xok=401;
$result = mysqli_query($conn, "SELECT * FROM health_db ORDER BY date_of_birth
DESC,time_log desc LIMIT 1");
if ($result) {
while($row=mysqli_fetch_assoc($result)){
$output[] = $row;

$xok=200;

}

echo json_encode($output);
http_response_code($xok);

}
mysqli_close($conn);
?>