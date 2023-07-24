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
    // Verifica se os campos necessários estão presentes no corpo da requisição
    if (
        isset($_POST["titulo"]) &&
        isset($_POST["descricao"])
    ) {
        $titulo = $_POST["titulo"];
        $descricao = $_POST["descricao"];

        // Prepara a instrução SQL para inserção de uma nova atividade
        $sql = "INSERT INTO atividades (titulo, descricao) VALUES ('$titulo', '$descricao')";

        if ($conn->query($sql) === true) {
            echo "Atividade inserida com sucesso!";
        } else {
            echo "Erro ao inserir atividade: " . $conn->error;
        }
    } else {
        echo "Campos obrigatórios faltando.";
    }

    $conn->close();
}
?>
