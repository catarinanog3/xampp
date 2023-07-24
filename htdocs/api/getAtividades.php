<?php
header("Access-Control-Allow-Origin: *");

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "aquarela";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $sql = "SELECT * FROM atividades";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $formularios = array();

        while ($row = $result->fetch_assoc()) {
            $formularios[] = $row;
        }

        echo json_encode($formularios);
    } else {
        echo "Nenhuma atividade encontrada.";
    }

    $conn->close();
}
?>
