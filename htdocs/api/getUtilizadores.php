<?php

header('Access-Control-Allow-Origin: *');

$conn = mysqli_connect("localhost", "root", "", "aquarela");
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM utilizadores";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  $data = array();

  while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
  }

  header('Content-Type: application/json');
  echo json_encode($data);
} else {
  header('Content-Type: application/json');
  echo json_encode(array());
}

mysqli_close($conn);
?>