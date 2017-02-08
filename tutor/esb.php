<?php
//Cabeceras
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON

//Método por el que vienen los parámetros
$metodo = $_SERVER['REQUEST_METHOD'];

//Si el método es...
switch ($metodo)
{
    case "GET": //GET
        //Se accederá al recurso materia y test
        //Compruebo que venga el parámero materia en la url y no esté vacío
        if( isset($_GET['materia']) && !empty($_GET['materia']) )
        {
            //Si viene el parámetro test y no está vacio
            if( isset($_GET['test']) && !empty($_GET['test']) )
            {
                //Llamo al servicio test.php
                include_once './test.php';
                $url = "test.php?materia=".$_GET['materia']."&test=".$_GET['test'];
                $_SERVER['REQUEST_URI'] = $url;
                $test = json_decode($json);
            }else
            {
                //Sino llamo al servicio materia
                include_once './materia.php';
                $url = "materia.php?materia=".$_GET['materia'];
                $_SERVER['REQUEST_URI'] = $url;
                $materia = json_decode($json);
                //echo "</br>El id de materia es: ".$json->id_materia;
            }
        }else
        {
            //Si no viene la materia...
            $estado_peticion = array(   "estado" => "KO 400",
                                        "mensaje" => "Parámetros incorrectos",
                                        "detalles" => "Los parámetros aceptados para la petición GET son: materia=string, test=bool"
                                    );
            $estado_peticion = json_encode($estado_peticion);
            //echo $estado_peticion;
        }
        break;
    case "POST": //POST
        //Se accederá al login y a las respuestas
        //Para el login...
        //Compruebo que viene correo y pass
        //var_dump($_POST);
        if( (isset($_POST['correo']) && !empty($_POST['correo'])) && (isset($_POST['pass']) && !empty($_POST['pass'])) )
        {
            include_once './login.php';
            $url = "login.php?correo=".$_POST['correo']."&pass=".$_POST['pass'];
            $_SERVER['REQUEST_URI'] = $url;
            $usuario = json_decode($json);
            //echo $usuario->token;
        }else
        {
            $estado_peticion = array(   "estado" => "KO 400",
                                        "mensaje" => "Parámetros incorrectos",
                                        "detalles" => "Los parámetros aceptados para la petición de login por POST son: correo=string, pass=string"
                                    );
            $estado_peticion = json_encode($estado_peticion);
            //echo $estado_peticion;
        }
        if( isset($_POST['materia']) && !empty($_POST['materia']) && isset($_POST['test']) && !empty($_POST['test']) && isset($_POST['token']) && !empty($_POST['token']))
        {
            //echo "</br>Existe la variable usuario y el token no está vacío";
            include_once './resultado.php';
            $url = "resultado.php?materia=".$_POST['materia']."&test=".$_POST['test']."&token=".$_POST['token'];
            $_SERVER['REQUEST_URI'] = $url;
            //$resultado = json_decode($json);
            //$url = "resultado.php?token=".$usuario->token."&datos=".;
        }else
        {
            $estado_peticion = array(   "estado" => "KO 400",
                                        "mensaje" => "Parámetros incorrectos",
                                        "detalles" => "Los parámetros aceptados para la petición de resultado por POST son: materia=string, test=1 y token=string"
                                    );
            $estado_peticion = json_encode($estado_peticion);
            //echo $estado_peticion;
        }
        break;
}