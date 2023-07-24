<?php
header("Access-Control-Allow-Origin: *");

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "formularios";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão com a base de dados: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $sql = "SELECT * FROM fotografias";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $fotografias = array();

        while ($row = $result->fetch_assoc()) {
            $fotografias[] = $row;
        }

        echo json_encode($fotografias);
    } else {
        echo "Nenhuma foto encontrada.";
    }

    $conn->close();
}
?>
