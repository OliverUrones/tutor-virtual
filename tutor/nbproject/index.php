<?php
//header("HTTP/1.1 200 OK");
//header("Content-Type: application/json"); //Para que los datos los devuelva en JSON
//$_GET['materia'] = "redes";
//$_GET['test'] = 1;
include_once './esb.php';
include_once './login.php';
//include_once './materia.php';
//$test = json_encode($test);
//var_dump($test);
//echo "id_pregunta --> ".$test->test[0]->id_pregunta;
//echo "respuestas --> ".$test->test[0]->respuestas->a;
header("Content-Type: text/html"); //Para que los datos los devuelva en html
$url = "esb.php?materia=".$_REQUEST['materia']."&test=".$_REQUEST['test']."&token=oqpoenh4q3m6jcj9i26ettmts0";
?>
<html>
    <body>
        <h1>Test</h1>
        <form method="POST" action="<?= $url ?>" id="<?= $test->test[0]->materia?>">
            <input type="hidden" name="materia" value="<?= $_REQUEST['materia'] ?>">
            <input type="hidden" name="test" value="<?= $_REQUEST['test'] ?>">
            <input type="hidden" name="token" value="<?= $_REQUEST['token'] ?>">
            <h2>Pregunta 1 de redes</h2>
            <input name="<?= $test->test[0]->id_pregunta ?>" value="a" type="radio" /><?= $test->test[0]->respuestas->a ?>.<br/>
            <input name="<?= $test->test[0]->id_pregunta ?>" value="b" type="radio" /><?= $test->test[0]->respuestas->b ?>.<br/>
            <input name="<?= $test->test[0]->id_pregunta ?>" value="c" type="radio" /><?= $test->test[0]->respuestas->c ?>.<br/>
            <input name="<?= $test->test[0]->id_pregunta ?>" value="d" type="radio" /><?= $test->test[0]->respuestas->d ?>.
            <h2>Pregunta 2 de redes</h2>
            <input name="<?= $test->test[1]->id_pregunta ?>" value="a" type="radio" /><?= $test->test[1]->respuestas->a ?>.<br/>
            <input name="<?= $test->test[1]->id_pregunta ?>" value="b" type="radio" /><?= $test->test[1]->respuestas->b ?>.<br/>
            <input name="<?= $test->test[1]->id_pregunta ?>" value="c" type="radio" /><?= $test->test[1]->respuestas->c ?>.<br/>
            <input name="<?= $test->test[1]->id_pregunta ?>" value="d" type="radio" /><?= $test->test[1]->respuestas->d ?>.
            <input value="enviar" type="submit">
        </form>
    </body>
</html>
<?php
var_dump($_POST);