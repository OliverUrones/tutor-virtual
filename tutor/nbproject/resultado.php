<?php
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON
echo "Estoy en resultado.php\n";
//var_dump($_POST);

//Recogo la materia y el token que vienen por post
$materia = $_POST['materia'];
$token = $_POST['token'];

echo "La materia es '".$materia."' y el token es '".$token."'.";
//Compruebo el token se le ha pasado por POST con el almacenado en la base de datos

//Si coinciden recogo el resultado del test y lo compruebo con las respuestas correctas de la base de datos