<?php
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON

if(isset($_POST['materia']) && !empty($_POST['materia']) && isset($_POST['test']) && !empty($_POST['test']) && isset($_POST['token']) && !empty($_POST['token']))
{
    //Recojo la materia y el token que vienen por post
    $materia = $_POST['materia'];
    $token = $_POST['token'];

    //Variables para guardar el resultado del test
    $total_preguntas = 0;
    $correctas = 0;
    $incorrectas = 0;

    //echo "La materia es '".$materia."' y el token es '".$token."'.";

    ////Conexión a la base de datos
    //$link = mysqli_connect('localhost','root','toor', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Ubuntu
    $link = mysqli_connect('localhost','root','', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Windows

    //Compruebo que el token que se ha pasado por POST con el almacenado en la base de datos
    $sql = 'SELECT * FROM usuario WHERE token="'.$token.'"';
    $resultado = mysqli_query($link, $sql);
    
    //Si el número de filas es 1, el usuario está en el sistema
    if($resultado->num_rows === 1)
    {
        //Consulta a la base de datos para recuperar las respuestas correctas
        $sql = 'SELECT pregunta1.id_pregunta, pregunta2.texto_p, pregunta1.id_materia, materia.nombre_m, respuesta2.correcta '
                . 'FROM pregunta1, pregunta2, respuesta1, respuesta2, materia '
                . 'WHERE pregunta1.id_pregunta=pregunta2.id_pregunta '
                . 'AND pregunta1.id_pregunta=respuesta1.id_pregunta '
                . 'AND respuesta1.id_respuesta=respuesta2.id_respuesta '
                . 'AND pregunta1.id_materia=materia.id_materia '
                . 'AND pregunta1.id_materia=(SELECT id_materia FROM materia WHERE nombre_m="'.$materia.'")';
        $resultado = mysqli_query($link, $sql);

        $total_preguntas = $resultado->num_rows;
        //Para cada resultado obtenido de la base de datos
        //compruebo las respuestas mandadas
        for ($i = 0; $i < $total_preguntas; $i++) {
            $line = mysqli_fetch_array($resultado);
            //echo "correcta = ".$line['correcta'];
            //echo "respuesta = ".$_POST[$i+1];

            //Si la respuesta correcta coincide con la que se le pasa por POST...
            if($line['correcta'] === $_POST[$i+1])
            {
                //...sumo un resultado a correctas
                $correctas++;
            }else
            {
                //..sino sumo un resultado a incorrectas
                $incorrectas++;
            }
            //var_dump($line['correcta']);
        }

        //Cierro la conexión
        mysqli_close($link);
        
        $json = array("estado" => "OK 200", "resultados" => array("correctas" => $correctas, "incorrectas" => $incorrectas, "totales" => $total_preguntas));
        $json = json_encode($json);
        echo $json;
    }else
    {
        //Cierro la conexión
        mysqli_close($link);
        
        $estado_peticion =  array("estado" => "401 No Autorizado", "detalles" => "NO autentificado");
        echo json_encode($estado_peticion);
    }
}else
{
    echo json_encode(array("estado" => "401 No Autorizado", "detalles" => "Compruebe los parámetros o el tipo de envío. Debe ser por POST"));
}