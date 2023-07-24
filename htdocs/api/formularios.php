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

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $horario = $_POST["horario"];
    $nome = $_POST["nome"];
    $sexo = $_POST["sexo"];
    $morada = $_POST["morada"];
    $num_telefone = $_POST["num_telefone"];
    $acompanhantes = $_POST["acompanhantes"];
    $nome_crianca = $_POST["nome_crianca"];
    $idade_crianca = $_POST["idade_crianca"];
    $cuid_medicos = $_POST["cuid_medicos"];
    $nif = $_POST["nif"];
    $atividade = $_POST["atividade"];


    $sql = "INSERT INTO formularios (email, horario, nome, sexo, morada, num_telefone, acompanhantes, nome_crianca, idade_crianca, cuid_medicos, nif, atividade)
            VALUES ('$email', '$horario', '$nome', '$sexo', '$morada', '$num_telefone', '$acompanhantes', '$nome_crianca', '$idade_crianca', '$cuid_medicos', '$nif', '$atividade' )";

    if ($conn->query($sql) === true) {
        echo "<p class='mensagem-sucesso'>Dados inseridos com sucesso!</p>";
    } else {
        echo "<p class='mensagem-erro'>Erro ao inserir dados: " . $conn->error . "</p>";
    }
}

// Fecha a conexão com o banco de dados
$conn->close();
?>
