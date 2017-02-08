<?php
header("HTTP/1.1 200 OK");
header("Content-Type: application/json"); //Para que los datos los devuelva en JSON
    
    //md5("admin") = 21232f297a57a5a743894a0e4a801fc3
    $datos = array("correo" => "admin@admin.com", "password" => "21232f297a57a5a743894a0e4a801fc3", "nombre" => "admin", "token" => NULL);

    //Compruebo si la petición viene por POST

    if(isset($_POST['correo']) && isset($_POST['pass']))
    {
        //Conexión a la base de datos
        $link = mysqli_connect('localhost','root','toor', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Ubuntu
        //$link = mysqli_connect('localhost','root','', 'tutor') or die("No se pudo conectar: ".mysql_errno()); //Windows

        //Consulta del usuario a recuperar
        //$sql = 'SELECT correo, nombre, token FROM usuario WHERE correo="'.$datos["correo"].'" AND password="'.$datos["password"].'"';
        $sql = 'SELECT correo, nombre, token FROM usuario WHERE correo="'.$_POST["correo"].'" AND password="'.md5($_POST["pass"]).'"';
        $resultado = mysqli_query($link, $sql); //Ubuntu

        if($resultado->num_rows == 1)   //Si el resultado trae una fila...
        {
            //Inicio una sesión
            session_start();

            //Paso los datos a un array asociativo
            $line = mysqli_fetch_assoc($resultado);

            //El identificador de sesión pasa a ser el token
            $line["token"] = session_id();

            //Guardo los datos del usuario en sesión
            $_SESSION["usuario"] = $line;

            //Actualizo el token en la base de datos
            $sql = 'UPDATE usuario SET token = "'.$line["token"].'" WHERE correo = "'.$line["correo"].'"';
            $resultado = mysqli_query($link, $sql);

            //Añado el estado de conexión al resultado
            $line["estado"] = "OK 200";

            //Codifico a json
            $json = json_encode($line);
            echo $json;
            //echo '</br>$_SESSION = ';
            //var_dump($_SESSION);
        }else
        {
                echo json_encode(array("estado" => "401 No Autorizado", "detalles" => "Usuario no encontrado"));
        }
    }else
    {
        echo json_encode(array("estado" => "401 No Autorizado", "detalles" => "No se ha enviado el correo y/o contraseña"));
    }
?>