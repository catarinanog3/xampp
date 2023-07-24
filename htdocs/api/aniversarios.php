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
    $email = $_POST["email"];
    $horario = $_POST["horario"];
    $nome = $_POST["nome"];
    $sexo = $_POST["sexo"];
    $morada = $_POST["morada"];
    $num_telefone = $_POST["num_telefone"];
    $participantes = $_POST["participantes"];
    $nome_aniversariante = $_POST["nome_aniversariante"];
    $idade_aniversariante = $_POST["idade_aniversariante"];
    $atividade = $_POST["atividade"];


    $sql = "INSERT INTO aniversarios (email, horario, nome, sexo, morada, num_telefone, participantes, nome_aniversariante, idade_aniversariante, atividade)
            VALUES ('$email', '$horario', '$nome', '$sexo', '$morada', '$num_telefone', '$participantes', '$nome_aniversariante', '$idade_aniversariante', '$atividade' )";

    if ($conn->query($sql) === true) {
        echo "<p class='mensagem-sucesso'>Dados inseridos com sucesso!</p>";
    } else {
        echo "<p class='mensagem-erro'>Erro ao inserir dados: " . $conn->error . "</p>";
    }
}

$conn->close();
?>
