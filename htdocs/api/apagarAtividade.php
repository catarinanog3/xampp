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

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"])) {
        $id = $_POST["id"];

        $sql = "DELETE FROM atividades WHERE id = $id";

        if ($conn->query($sql) === true) {
            echo "Atividade excluída com sucesso!";
        } else {
            echo "Erro ao excluir atividade: " . $conn->error;
        }
    } else {
        echo "ID da atividade não fornecido.";
    }

    $conn->close();
}
?>
