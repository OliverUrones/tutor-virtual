<?php
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON
    
//Conexión a la base de datos
$link = mysqli_connect('localhost','root','toor', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Ubuntu
//$link = mysqli_connect('localhost','root','', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Windows

//Si viene la materia, y si también viene el test y no está vacío...
if(isset($_GET['materia']) && isset($_GET['test']) && !empty($_GET['test']))
{
    //Consulta para traer las preguntas relacionadas con la materia que se le pasa
    $sql = 'SELECT pregunta1.id_pregunta, pregunta2.texto_p, pregunta1.id_materia, materia.nombre_m, respuesta2.a, respuesta2.b, respuesta2.c, respuesta2.d '
            . 'FROM pregunta1, pregunta2, respuesta1, respuesta2, materia '
            . 'WHERE pregunta1.id_pregunta=pregunta2.id_pregunta '
            . 'AND pregunta1.id_pregunta=respuesta1.id_pregunta '
            . 'AND respuesta1.id_respuesta=respuesta2.id_respuesta '
            . 'AND pregunta1.id_materia=materia.id_materia '
            . 'AND pregunta1.id_materia=(SELECT id_materia FROM materia WHERE nombre_m="'.$_GET['materia'].'")';
    $resultado = mysqli_query($link, $sql);

    //Array de arrays donde se guardarán las preguntas
    $preguntas = array(array());
    $respuestas = array();
    
    //Voy guardando los resultados que se han obtenido en la consulta a la base de datos en $preguntas
    for ($i = 0; $i < $resultado->num_rows; $i++) {
        $line = mysqli_fetch_array($resultado);
        $preguntas[$i]['id_pregunta'] = $line['id_pregunta'];
        $preguntas[$i]['texto_p'] = utf8_encode($line['texto_p']);
        $preguntas[$i]['id_materia'] = $line['id_materia'];
        $preguntas[$i]['materia'] = $line['nombre_m'];
        $respuestas = array("a" => $line['a'], "b" => $line['b'], "c" => $line['c'], "d" => $line['d']);
        $preguntas[$i]['respuestas'] = $respuestas;
    }
    
    //Establezco los parámetros de respuesta del JSON
    $json = array("estado" => "OK 200", "test" => $preguntas);
    $json = json_encode($json);
    echo $json;
}