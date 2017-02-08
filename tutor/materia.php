<?php
//Cabeceras
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON

//Si viene la materia por GET
if(isset($_GET['materia']))
{
    //Conexión a la base de datos
    //$link = mysqli_connect('localhost','root','toor', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Ubuntu
    $link = mysqli_connect('localhost','root','', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Windows
    
    //Consulta de la materia a recupear
    $sql = 'SELECT * FROM materia WHERE nombre_m="'.$_GET['materia'].'"';
    $resultado = mysqli_query($link, $sql);
    if($resultado->num_rows == 1)
    {
        $line = mysqli_fetch_assoc($resultado);

        //Codifico el texto de la materia en utf8 para que se vean bien los acentos y demás caracteres
        $line["texto_m"] = utf8_encode($line["texto_m"]);

        //Establezco los parámetros de respuesta del JSON
        $estado_peticion = array("estado" => "OK 200", "materia" => $line);

        //Cierro la conexión
        mysqli_close($link);

        $json = json_encode($estado_peticion);
        echo $json;
    }else
    {
        //Establezco los parámetros de respuesta del JSON
        $estado_peticion = array("estado" => "OK 200", "mensaje" => "Materia no encontrada");

        //Cierro la conexión
        mysqli_close($link);

        $json = json_encode($estado_peticion);
        echo $json;
    }
}else
{
    echo json_encode(array("estado" => "401 No Autorizado", "detalles" => "No se ha especificado la materia o no viene por POST"));
}
