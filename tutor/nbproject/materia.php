<?php
//Cabeceras
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON

//Conexión a la base de datos
$link = mysqli_connect('localhost','root','toor', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Ubuntu
//$link = mysqli_connect('localhost','root','', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Windows

//Si viene la materia por GET
if(isset($_GET['materia']))
{
    //Consulta de la materia a recupear
    $sql = 'SELECT * FROM materia WHERE nombre_m="'.$_GET['materia'].'"';
    $resultado = mysqli_query($link, $sql);
    $line = mysqli_fetch_assoc($resultado);
    
    //Codifico el texto de la materia en utf8 para que se vean bien los acentos y demás caracteres
    $line["texto_m"] = utf8_encode($line["texto_m"]);
    
    //Establezco los parámetros de respuesta del JSON
    $estado_peticion = array("estado" => "OK 200", "materia" => $line);
    $json = json_encode($estado_peticion);
    echo $json;
}