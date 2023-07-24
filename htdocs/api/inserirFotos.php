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
    // Verifica se o campo necessário está presente no corpo da requisição
    if (isset($_FILES["fotografias"])) {

        // File handling
        $file_name = $_FILES["fotografias"]["name"];
        $file_tmp = $_FILES["fotografias"]["tmp_name"];

        // Extract the file extension
        $file_extension = pathinfo($file_name, PATHINFO_EXTENSION);

        // Remove the file extension from the filename
        $filename_without_extension = pathinfo($file_name, PATHINFO_FILENAME);

        // Extract the file format (extension without the dot)
        $file_format = strtolower($file_extension);

        // Check if the file format is "jpg" or "jpeg"
        if ($file_format === "jpg" || $file_format === "jpeg") {
            // Update the destination folder path
            $destination_folder = "C:/Users/catar/OneDrive/Ambiente de Trabalho/novo/Planeta Aquarela/images/portfolio/";
            $file_destination = $destination_folder . $file_name;

            // Move the uploaded file to the destination folder
            if (move_uploaded_file($file_tmp, $file_destination)) {
                // Prepare the SQL statement to insert the new photograph with the filename and format into the database
                $sql = "INSERT INTO fotografias (fotografias, format) VALUES ('$filename_without_extension', '$file_format')";

                if ($conn->query($sql) === true) {
                    echo "Fotografia inserida com sucesso!";
                } else {
                    echo "Erro ao inserir fotografia: " . $conn->error;
                }
            } else {
                echo "Erro ao fazer o upload do arquivo.";
            }
        } else {
            echo "Formato de arquivo inválido. Apenas arquivos JPG ou JPEG são permitidos.";
        }
    } else {
        echo "Campos obrigatórios faltando.";
    }

    $conn->close();
}
?>
