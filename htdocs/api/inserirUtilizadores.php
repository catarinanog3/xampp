<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "aquarela";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (
        isset($_POST["email"]) &&
        isset($_POST["password"])
    ) {
        $email = $_POST["email"];
        $password = $_POST["password"];

        $sql = "INSERT INTO utilizadores (email, password) VALUES ('$email', '$password')";

        if ($conn->query($sql) === true) {
            echo "Utilizador registado com sucesso!";
        } else {
            echo "Erro ao registar utilizador: " . $conn->error;
        }
    } else {
        echo "Campos obrigatórios faltando.";
    }

    $conn->close();
}
?>
