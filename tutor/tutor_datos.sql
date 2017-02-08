-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-12-2016 a las 12:03:37
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tutor`
--

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `nombre_m`, `texto_m`, `enlace`) VALUES
(1, 'Hardware', 'Hardware\nHardware: corresponde a todas las partes físicas y tangibles de una computadora, sus componentes eléctricos, electromecánicos y mecánicos; sus cables, gabinetes o cajas, periféricos de todo tipo y cualquier otro elemento físico involucrado; contrariamente al soporte lógico e intangible que es llamado software. La Real Academia Española lo define como «Conjunto de los componentes que integran la parte material de una computadora». \nUn sistema informático se compone de una unidad central de procesamiento (CPU), encargada de procesar los datos, uno o varios periféricos de entrada, los que permiten el ingreso de la información y uno o varios periféricos de salida, los que posibilitan dar salida a los datos procesados.\nTipos de hardware\nEl Hardware aparece en dos categorías: por un lado, el "básico", que abarca el conjunto de componentes indispensables necesarios para otorgar la funcionalidad mínima a una computadora, (un medio de entrada de datos, la unidad de procesamiento y memoria y un medio de salida de datos) y por otro lado, el "Hardware complementario", es el utilizado para realizar funciones específicas, no estrictamente necesarias para el funcionamiento de la computadora.\nLos medios de entrada y salida de datos estrictamente indispensables dependen de la aplicación: desde un punto de vista de un usuario común, se debería disponer, al menos, de un teclado y un monitor para entrada y salida de información, respectivamente; pero ello no implica que no pueda haber una computadora en la que no sea necesario teclado ni monitor, bien puede ingresar información y sacar sus datos procesados, por ejemplo, a través de una placa de adquisición/salida de datos.\nLas computadoras son aparatos electrónicos capaces de interpretar y ejecutar instrucciones programadas y almacenadas en su memoria, ellas consisten básicamente en operaciones aritmético-lógicas y de entrada/salida. Se reciben las entradas (datos), se las procesa y almacena (procesamiento), y finalmente se producen las salidas (resultados del procesamiento). Por ende todo sistema informático tiene, al menos, componentes y dispositivos hardware dedicados a alguna de las funciones ante dichas; a saber:\n1. Procesamiento: Unidad Central de Proceso o CPU\n2. Almacenamiento: Memorias\n3. Entrada: Periféricos de Entrada (E)\n4. Salida: Periféricos de salida (S)\n5. Entrada/Salida: Periféricos mixtos (E/S)\nDesde un punto de vista básico y general, un dispositivo de entrada es el que provee el medio para permitir el ingreso de información, datos y programas (lectura); un dispositivo de salida brinda el medio para registrar la información y datos de salida (escritura); la memoria otorga la capacidad de almacenamiento, temporal o permanente (almacenamiento); y la CPU provee la capacidad de cálculo y procesamiento de la información ingresada (transformación).\nUn periférico mixto es aquél que puede cumplir funciones tanto de entrada como de salida, el ejemplo más típico es el disco rígido (ya que en él se lee y se graba información y datos).\nUnidad Central de Procesamiento\nLa CPU, siglas en inglés de Unidad Central de Procesamiento, es la componente fundamental del computador, encargada de interpretar y ejecutar instrucciones y de procesar datos. En los computadores modernos, la función de la CPU la realiza uno o más microprocesadores. Se conoce como microprocesador a un CPU que es manufacturado como un único circuito integrado.\nUn servidor de red o una máquina de cálculo de alto rendimiento (supercomputación), puede tener varios, incluso miles de microprocesadores trabajando simultáneamente o en paralelo (multiprocesamiento); en este caso, todo ese conjunto conforma la CPU de la máquina.\nLas unidades centrales de proceso (CPU) en la forma de un único microprocesador no sólo están presentes en las computadoras personales (PC), sino también en otros tipos de dispositivos que incorporan una cierta capacidad de proceso o "inteligencia electrónica"; como pueden ser: controladores de procesos industriales , televisores, automóviles, calculadores, aviones, teléfonos móviles, electrodomésticos, juguetes y muchos más.\nEl microprocesador se monta en la llamada placa madre, sobre el un zócalo conocido como zócalo de CPU, que permite además las conexiones eléctricas entre los circuitos de la placa y el procesador. Sobre el procesador y ajustado a la tarjeta madre se fija un disipador de calor, que por lo general es de aluminio, en algunos casos de cobre; éste es indispensable en los microprocesadores que consumen bastante energía, la cual, en gran parte, es emitida en forma de calor: En algunos casos pueden consumir tanta energía como una lámpara incandescente de 40 a 130 vatios.\nLa gran mayoría de los circuitos electrónicos e integrados que componen el hardware del computador van montados en la placa madre.\nLa placa madre, también conocida como placa base o con el anglicismo board, es un gran circuito impreso sobre el que se suelda los chipset, las ranuras de expansión (slots), los zócalos, conectores, diversos integrados, etc. Es el soporte fundamental que aloja y comunica a todos los demás componentes por medio de: Procesador, módulos de memoria RAM, tarjetas gráficas, tarjetas de expansión, periféricos de entrada y salida. Para comunicar esos componentes, la placa base posee una serie de buses con los cuales se trasmiten los datos dentro y hacia afuera del sistema.\nLa tendencia de integración ha hecho que la placa base se convierta en un elemento que incluye también la mayoría de las funciones básicas (vídeo, audio, red, puertos  de varios tipos), funciones que antes se realizaban con tarjetas de expansión. Aunque ello no excluye la capacidad de instalar otras tarjetas adicionales específicas, tales como capturadoras de vídeo, Tarjetas de adquisición de datos, etc.\nMemoria RAM\nLa RAM es la memoria utilizada en una computadora para el almacenamiento transitorio y de trabajo no masivo. Almacena temporalmente la información, datos y programas que la Unidad de Procesamiento (CPU) lee, procesa y ejecuta. La memoria RAM es conocida como Memoria principal de la computadora, también como "Central o de Trabajo";  a diferencia de las llamadas memorias auxiliares y de almacenamiento masivo (como discos duros, cintas magnéticas u otras memorias).\nLa memoria RAM de un computador se provee de fábrica e instala en lo que se conoce como “módulos”. Ellos albergan varios circuitos integrados de memoria DRAM que, conjuntamente, conforman toda la memoria principal.\nPeriféricos\nSe entiende por periférico a las unidades o dispositivos que permiten a la computadora comunicarse con el exterior, esto es, tanto ingresar como exteriorizar información y datos. Los periféricos son los que permiten realizar las operaciones conocidas como de entrada/salida (E/S).\nPeriféricos de entrada (E)\nEntre los periféricos de entrada se puede mencionar: teclado, mouse o ratón, escáner, micrófono, cámara web , \nPeriféricos de salida (S)\nSon aquellos que permiten emitir o dar salida a la información resultante de las operaciones realizadas por la CPU (procesamiento).Los dispositivos más comunes de este grupo son los monitores clásicos (no de pantalla táctil), las impresoras, y los altavoces. \nPeriféricos mixtos (E/S)\nSon aquellos dispositivos que pueden operar de ambas formas: tanto de entrada como de salida. Típicamente, se puede mencionar como periféricos mixtos o de Entrada/Salida a: discos rígidos, disquetes, unidades de cinta magnética, lecto-grabadoras de CD/DVD, discos ZIP, etc. También entran en este rango, con sutil diferencia, otras unidades, tales como: Memoria flash, tarjetas de red, módems, placas de captura/salida de vídeo, etc. \nHardware gráfico\nEl hardware gráfico lo constituyen básicamente las tarjetas de video. Actualmente poseen su propia memoria y unidad de procesamiento, esta última llamada unidad de procesamiento gráfico (o GPU, siglas en inglés de Graphics Processing Unit). El objetivo básico de la GPU es realizar exclusivamente procesamiento gráfico, liberando al procesador principal (CPU) de esa costosa tarea (en tiempo) para que pueda así efectuar otras funciones más eficientemente. Antes de esas tarjetas de video con aceleradores, era el procesador principal el encargado de construir la imagen mientras la sección de video (sea tarjeta o de la placa base) era simplemente un traductor de las señales binarias a las señales requeridas por el monitor; y buena parte de la memoria principal (RAM) de la computadora también era utilizada para estos fines.', 'https://es.wikipedia.org/wiki/Hardware'),
(2, 'Software', 'Software. Definición\nEl software son las instrucciones electrónicas que van a indicar al ordenador que es lo que tiene que hacer. También se puede decir que son los programas usados para dirigir las funciones de un sistema de computación o un hardware.\nTipos :\na.- Sistema operativo: es el software que controla la ejecución de todas las aplicaciones y de los programas de software de sistema.\nb.- Programas de ampliación: o también llamado software de aplicación; es el software diseñado y escrito para realizar una tarea especifica, ya sea personal, o de procesamiento. Aquí se incluyen las bases de datos, tratamientos de textos, hojas electrónicas, gráficas, comunicaciones, etc..\nc.- Lenguajes de programación: son las herramientas empleadas por el usuario para desarrollar programas, que luego van ha ser ejecutados por el ordenador.\n3. Sistemas Operativos\nSon una serie de programas que administran los recursos del computador. Este indica como interactuar con el usuario y como usar los dispositivos: discos duros, teclado y monitor.\nFunción:\nEs el núcleo de toda la actividad del software.\nMonitorea y controla todas las entradas y salidas de sistemas de computación.\nEste responde a las indicaciones provenientes del usuario, o de un conjunto previamente definido de comandos.\nControla la ejecución de varios programas, simultáneamente.\nActúa como traductor, entre las operaciones y la respuesta de la maquina.\nInforma al usuario de cualquier error que presente la maquina.\nEste posee un programa llamado "manipulador de discos" opera con un circuito electrónico llamado controlador de discos, este ayuda a traducir las ordenes de los programas para encontrar la pista adecuada.\nComponentes: El sistema operativo es generalmente diseñado por el fabricante y por ello no es posible definir uno estándar; aunque hay un conjunto de funciones básicas o componentes que todo sistema debe considerar, y son:\nControlar las operaciones de entrada y salida.\nCargar, inicializar y supervisar la ejecución de los trabajos.\nDetectar errores.\nControlar las interrupciones causadas por los errores.\nAsignar memoria a cada tarea.\nManejar el multiproceso, la multiprogramación, memoria virtual, etc..\nClasificación:\nLos sistemas operativos se clasifican en:\nUsuario único: es de tipo simple, ya que se dedica a un solo programa a la vez.\nUsuario múltiple: es de tipo general, ya que puede satisfacer las exigencias de usuarios múltiples con los recursos de programas y maquina de que se dispone. Puede ser de varios tipos:\nMultiprogramación: es un caso en la que múltiples programas pueden almacenarse en la memoria y ejecutarse siguiendo un nivel de prioridades.\nTiempo compartido: permite que cada programa actúe durante cierto tiempo (apropiado para programas interactivos).\nLotes: es una colección de programas, escritos en COBOL o FOLTRAN, se incorpora al ordenador y se procesa.\nTiempo Real: en este la respuesta al ordenador debe ser lo bastan rápida como para proporcionar una decisión en tiempo real.\n4. Software de Aplicación\nEste describe programas que son para el usuario, así descrito para poder realizar casi cualquier tarea. Este es aquel cuyo que puede ser utilizado en cualquier instalación informática, independiente del empleo que vayamos a hacer de ella. Como existen muchos programas se dividen en varias categorías:\nAplicaciones de negocios: en esta se encuentran los procesadores de palabras, hojas de cálculos, base de datos, Graficadores.\nAplicaciones de Utilería\nAplicaciones Personales\nAplicaciones de Entretenimiento\nProcesadores de palabras: Estos permiten hacer cambios y correcciones con facilidad, permiten revisar la ortografía e incluso la gramática de un documento, cambiar la apariencia de la letra, agregar gráficos, fusionar listas de direcciones con cartas con envío de correo en grupo, general tablas de contenido, etc. También se puede usar para crear cualquier tipo de documento (carta de negocio, documentos legales).\nHojas de calculo: son procesadores de números tridimensionales. Se pueden crear hojas de trabajo donde puedes colocar textos, números o formulas en las celdas, obteniendo una hoja contable computarizada. También puede crear gráficas y tablas para mostrar gráficamente relaciones entre números.\nGraficadores: Se utilizan para crear ilustraciones desde cero (0) los; usuarios pueden pintar con dispositivos electrónicos de señalamiento en vez de lápices o brochas. Otro tipo de software para gráfico son las aplicaciones para presentaciones de gráficos con este se crean gráficas y tabla a color y de calidad profesional basados en datos numéricos de otro programa (hoja de calculo).\nManejador de base de datos: Se utiliza para organizar los datos guardados en la computadora y permite buscar datos específicos de diferentes maneras. También archivan los datos en orden alfabético esto permite obtener la información que se desean más fácilmente.\n6. Conclusión\nComo nos pudimos dar cuenta el software no es cualquier cosa y con el se puede lograr todo lo que queramos, pero sabiendolo manejar correctamente.\nHay infinidades de programas pero a medida que las computadoras se vuelven mas populares, los desarrolladores de software, constantemente están sacando programas para quitar las tediosas tareas personales y hacerlas mas divertidas. Estos programas pueden ser exelentes herramientas para la educacion ya que si los ñiños disfrutan realizando las tareas jugando, sus habilidades aumentaran.\nTodos los días desarrolladores perseptivos encuentran problemas para para ser solucionados con software, y es que la tecnología a avansado tanto que una persona puede realizar operaciones bancarias desde su casa, enviar un correo electronico a cualquier parte del mundo, etc.; todo esto por el computador. Y esto es bueno ya que cada dia la competencia por crear un mejor software, fomenta a crearlos mas inmaginativos, mejores y a precios mas y mas baratos.', 'https://es.wikipedia.org/wiki/Software'),
(3, 'Seguridad', 'SEGURIDAD INFORMATICA\nLa seguridad informática, también conocida como ciberseguridad o seguridad de tecnologías de la información, es el área de la informática que se enfoca en la protección de la infraestructura computacional y todo lo relacionado con esta y, especialmente, la información contenida o circulante. Para ello existen una serie de estándares, protocolos, métodos, reglas, herramientas y leyes concebidas para minimizar los posibles riesgos a la infraestructura o a la información. La seguridad informática comprende software (bases de datos, metadatos, archivos), hardware y todo lo que la organización valore y signifique un riesgo si esta información confidencial llega a manos de otras personas, convirtiéndose, por ejemplo, en información privilegiada.\nla seguridad en un ambiente de red es la habilidad de identificar y eliminar vulnerabilidades.\nHacker\nEl término hacker tiene diferentes significados:\nHackers: Es todo individuo que se dedica a programar de forma entusiasta, o sea un experto entusiasta de cualquier tipo\nBlack hats : Persona que viola la seguridad informática para pocas razones más allá de la malicia o para beneficio personal.\nWhite hats: (hacker ético), o un experto de seguridad informática, quién se especializa en pruebas de penetración y en otras metodologías para asegurar la seguridad de los sistemas informáticos de una organización.\nGrey hats: hace referencia a un hacker talentoso que a veces actúa ilegalmente, pero con buenas intenciones.\nDefacers: es un usuario de ordenador con conocimientos avanzados caracterizado por usar puertas traseras, agujeros para acceder a los servidores.\nCracker: Se utiliza para referirse a las personas que "rompen" algún sistema de seguridad.\nAmenazas\nNo sólo las amenazas que surgen de la programación y el funcionamiento de un dispositivo de almacenamiento, transmisión o proceso deben ser consideradas, también hay otras circunstancias no informáticas que deben ser tomadas en cuenta. Muchas son a menudo imprevisibles o inevitables, de modo que las únicas protecciones posibles son las redundancias y la descentralización, \nLas amenazas pueden ser causadas por:\n•	Usuarios: causa del mayor problema ligado a la seguridad de un sistema informático. \n•	Programas maliciosos: programas destinados a perjudicar o a hacer un uso ilícito de los recursos del sistema. Es instalado en el ordenador, abriendo una puerta a intrusos o bien modificando los datos. Estos programas pueden ser un virus informático, un gusano informático, un troyano, una bomba lógica, un programa espía o spyware, en general conocidos como malware.\n•	Errores de programación: la mayoría de los errores de programación que se pueden considerar como una amenaza informática es por su condición de poder ser usados como exploits por los crackers.\n•	Intrusos: personas que consiguen acceder a los datos o programas a los cuales no están autorizados (crackers, defacers, hackers, etc.).\n•	Un siniestro (robo, incendio, inundación): una mala manipulación o mala intención derivan en la pérdida del material o de los archivos.\n•	Personal técnico interno.\n•	Fallos electrónicos o lógicos de los sistemas informáticos en general.\n•	Catástrofes naturales: rayos, terremotos, inundaciones, rayos cósmicos, etc.\n\nHerramientas para la seguridad\nHerramientas complementarias para una buena seguridad del equipo que se está utilizando:\n•	El antivirus es un programa que detecta la presencia de virus informáticos (malware que altera el funcionamiento normal del ordenador sin que el usuario lo sepa o consienta) y los elimina o repara.\n\n•	Firewall, o cortafuegos, es una parte de la red o el sistema que se realiza para bloquear accesos no autorizados y permitiendo los que sí lo están. Se pueden hacer por medio de software o hardware, y permiten una mayor protección a las redes, especialmente importante en empresas que cuentan con datos que han de ser bien protegidos.\n\n•	El antispyware es un conjunto de herramientas que sirven para prevenir y eliminar Spywares (espías o programas que recopilan información del ordenador para transmitirla a otras personas sin el consentimiento ni conocimiento del propietario del ordenador).\nProgramas maliciosos\n•	Virus. Este término se usa de forma genérica para darle nombre a un software malicioso que trata de hacer estragos en el ordenador. Sin embargo, la palabra correcta es malware. La característica principal del virus es que se reproduce a si mismo luego de anclarse a algún proceso del sistema operativo,\nLos virus son uno de los medios más tradicionales de ataque a los sistemas y a la información que sostienen. Para poder evitar su contagio se deben vigilar los equipos y los medios de acceso a ellos, principalmente la red.\n•	Gusano. Este programa también se reproduce a si mismo, pero generalmente no se ancla a ningún proceso. Los gusanos suelen correr en el fondo del sistema como un programa propio. Los gusanos suelen esparcirse rápidamente porque aprovechan las vulnerabilidades del sistema, y a veces son difíciles de detectar porque se valen de métodos de transporte de información que el sistema operativo tiene integrado.\n•	Troyano. Los troyanos se disfrazan de software con buenos propósitos, pero terminan comportándose de forma maliciosa. Es decir, se ven como programas legítimos pero están hechos para engañar al usuario y hacer daño al sistema. Los troyanos pueden hacer cosas como mostrar pop-ups, robar datos, borrar archivos y hasta instalar otros tipos de malware.\n\n•	Adware. Este tipo de amenazas no entran en la misma categoría de los virus, gusanos o troyanos. Para infectar un sistema operativo el Adware usualmente se instala junto a otro software que lo cuela en su instalador, y generalmente se puede eliminar si se desinstala el programa. El adware sirve para entregar publicidad de forma invasiva y en la mayoría de los casos se utiliza para conseguir más información de la que el usuario quiere dar.\n\n•	Spyware. Este software monitorea el ordenador donde está instalado, y recolecta información para ser entregada al tercero que lo ha creado. Puede no ser una gran amenaza para el usuario, como por ejemplo cuando visitamos una página web y toman información nuestra para hacer la navegación más eficiente cuando regresemos a ella. Sin embargo, en algunos casos puede ser muy dañino e invasivo, monitoreando hasta lo que escribes en tu teclado o a dónde mueves el mouse.\n\nPhishing\nPhishing o suplantación de identidad es un término informático que denomina un modelo de abuso informático y que se comete mediante el uso de un tipo de ingeniería social, caracterizado por intentar adquirir información confidencial de forma fraudulenta (como puede ser una contraseña, información detallada sobre tarjetas de crédito u otra información bancaria).', 'https://es.wikipedia.org/wiki/Seguridad_inform%C3%A1tica'),
(4, 'Redes', 'Una red es un conjunto de ordenadores conectados entre sí que pueden compartir de forma eficaz y segura ficheros, impresoras y otros periféricos así como ejecutar aplicaciones de red.\nLa capacidad de compartir recursos de forma eficiente es lo que le da a las redes de ordenadores su potencia y atractivo. \nEn su nivel más elemental, una red de ordenadores consta de dos equipos conectados entre sí con un cable. Todas las redes de ordenadores, independientemente de su nivel de sofisticación, surgen de este sistema tan simple. \nAntes de la aparición de las redes, la única manera de compartir ficheros era copiarlos en un disquete para pasárselos a otras personas.\n\nLas redes de equipos se clasifican en varios tipos dependiendo de su tamaño y función. Los dos tipos principales son redes LAN y redes WAN.\nUna red de área local (LAN, Local Area Network) puede ser muy simple (dos equipos conectados con un cable) o compleja (cientos de equipos y periféricos conectados dentro de una gran empresa). Las características fundamentales de una LAN son:\nUna restricción geográfica: el ámbito de una oficina, la planta de un edificio, un edificio entero e incluso un campus universitario. Nunca más de un conjunto de edificios.\nVelocidad de transmisión: debe ser relativamente elevada.\nLa red de área local debe ser privada, en cuanto a su acceso.\nFiabilidad en la transmisión: la tasa de error en la red debe ser muy baja. Son por tanto redes seguras.\nEn la última década se han desarrollado redes locales sin cables o inalámbricas que se llaman genéricamente WLAN. Utilizan tecnología de radiofrecuencia y permiten mayor movilidad a los usuarios. Son cada vez más utilizadas en empresas, centros de educación y también en los hogares para evitar el tendido de cables. \nLas redes de área extensa (WAN, Wide Area Network) son redes que intercomunican equipos sin ningún tipo de restricción geográfica. Las principales características son:\nNo existe ninguna restricción geográfica: los equipos pueden estar situados en cualquier parte del mundo.\nLa velocidad de transmisión es menor que en las redes LAN.\nLas redes WAN pueden ser de propiedad privada o pública. En el caso de las WAN privadas suelen estar formadas por medios de transmisión alquilados a redes de uso público (telefónicas o similares).\nLas transmisiones son menos fiables que en el caso de las LAN. Tienen tasas de error más altas, lo que redunda en una menor velocidad de transmisión.\n\nAlgunas de las razones para instalar una red local de ordenadores son: \nCompartir los recursos de la red: En una red todos los ordenadores pueden utilizar una misma impresora, una misma unidad de CD/DVD y otros periféricos con el consiguiente ahorro. A todos estos elementos que son compartidos por los ordenadores de la LAN se los llama recursos de red.\nIntercambiar datos: En una red es posible copiar datos (carpetas y ficheros) de un ordenador a otro rápidamente sin necesidad de usar medios de almacenamiento portátiles (disquetes, CD-ROM…).\nCompartir bases de datos: En la actualidad la mayoría de las aplicaciones informáticas comerciales son distribuidas (residen en varios ordenadores a la vez). Estas aplicaciones suelen precisar la existencia de bases de datos. El hecho de que la base de datos sea única y se acceda a ella a través de la red simplifica las aplicaciones y evita errores e inconsistencias de datos.\nAcceso a Internet: El acceso a Internet o cualquier otra WAN, no deja de ser un recurso que se comparte a través de la red. El acceso a este recurso se suele realizar por medio de routers o modems, cuyo uso se puede compartir a través de la red.\n\nPara montar una red local de ordenadores, además de los propios ordenadores necesitamos otros elementos adicionales.\nEstos elementos son:\n\nComponentes hardware\nTarjetas de red: También se las denomina NIC (Network Interface Card). Se trata de placas electrónicas instaladas dentro de los ordenadores en el slot correspondiente y cuya función es proporcionar el conexionado adecuado para el medio de transmisión que implementa la LAN (cable de red), y recibir y transmitir a su ordenador la información proveniente o con destino a la red.\nTarjetas inalámbricas: Semejantes a las anteriores pero sirven para conectarse a una red inalámbrica. Existen muchas de estas tarjetas que no son internas sino externas y se conectan a los ordenadores a través de los puertos USB o PCMCIA (entre otros), en vez de estar insertas en un slot.\nCables: Son los medios de transmisión de nuestra red. El tipo de cable más común actualmente es el UTP de categoría 5.\nConectores: Sirven para conectar el cable de red a la tarjeta de red y/o a la roseta de comunicaciones. El conector más común actualmente es el RJ45.\nConcentradores y Conmutadores: Se trata de dos elementos distintos en su funcionamiento interno, pero similares en su apariencia externa. Sirven para implementar la red, conexionando todos los cables provenientes de los diversos ordenadores. Más adelante estudiaremos la diferencia entre uno y otro.\nComponentes software\nSistema operativo de red: Para que los ordenadores sean capaces de compartir de forma eficiente los recursos de red, es preciso que tengan instalados sistemas operativos de red que integran las funciones de red dentro de ellos mismos.\nProtocolos de comunicaciones: Para poder comunicarse entre sí, las máquinas precisan tener implementados los denominados protocolos de comunicaciones. Se trata de una serie de convenciones y normas para intercambiar información. Algunos de estos protocolos están integrados dentro de los sistemas operativos y otros se implementan como aplicaciones software.\nDrivers: También se los denomina controladores. Sirven para gestionar el hardware instalado en el ordenador. En el caso de las redes LAN los drivers que nos importan son aquellos que manejan las tarjetas de red.\n\nEl término topología se refiere a la distribución física de los equipos, cables y otros componentes de la red. Además del término «topología», se usan también los de esquema físico, diseño, diagrama o mapa de la red. \nAntes de que los equipos puedan compartir recursos o realizar otras tareas de comunicaciones, necesitan estar conectados. En la mayoría de las redes, excepto en las redes inalámbricas, se utilizan cables para conectar los equipos. Sin embargo, no es tan simple como conectar a un equipo un cable que está conectado a otros equipos. Una topología particular determina no sólo el tipo de cable usado, sino, además, por dónde pasa el cable (paredes, techos y suelos) y por lo tanto se necesita una planificación previa. Ya hablaremos del cableado estructurado y de la normativa que debe cumplir. \n\n2.5.1 Topologías estándar \nTodos los diseños de redes parten de tres topologías básicas Bus, Estrella y Anillo. \nEstas topologías pueden combinarse obteniendo una variedad de topologías híbridas más complejas. \n\nBus\nÉste es el método más simple de conectar equipos en red. Todos los ordenadores se conectan a un mismo medio de transmisión (a un mismo cable o a una determinada frecuencia radioeléctrica en el caso de las redes WLAN). \nEn cada momento sólo puede haber un equipo enviando datos; el resto tiene que esperar para transmitir. Cuando la señal de datos atraviesa el bus (cable coaxial o espacio radioeléctrico), todas y cada una de las estaciones escuchan la señal pero solo la estación destinataria se queda con la información. Si en un momento dado dos estaciones intentan transmitir al mismo tiempo se produce una colisión y tienen que volver a efectuar la transmisión. Cuantos más equipos haya en un bus, más equipos estarán esperando para transmitir datos por él, y en consecuencia, la red será más lenta. Si el cable se corta o se desconecta un extremo la transmisión de datos se detiene. Ésta es una de las posibles razones por las que una red puede caer.\n\nEstrella \nEn la topología en estrella, los segmentos de cable de cada equipo están conectados a un dispositivo central que puede ser un concentrador (hub) o un conmutador (switch). Las señales son transmitidas desde el equipo emisor a través del concentrador a todos los equipos de la red (hub) o sólo al equipo destinatario (switch). \nLa red en estrella ofrece varias ventajas. Si falla un equipo (o si falla el cable que lo conecta al concentrador), el equipo afectado será el único que no podrá enviar o recibir datos de la red. El resto de la red continuará funcionando normalmente. Sin embargo, como cada equipo está conectado a un punto central, esta topología requiere una gran cantidad de cables cuando los equipos están alejados del concentrador. Además, si el punto central falla, cae toda la red.\n\nAnillo \nLa topología en anillo conecta equipos en un único círculo de cable. La señal viaja a través del bucle en una dirección, y pasa a través de cada equipo que puede actuar como repetidor para amplificar la señal y enviarla al siguiente equipo. El fallo de un equipo puede tener impacto sobre toda la red.', NULL);

--
-- Volcado de datos para la tabla `pregunta1`
--

INSERT INTO `pregunta1` (`id_pregunta`, `correo`, `id_materia`) VALUES
(1, 'admin@admin.com', 4),
(2, 'admin@admin.com', 4),
(3, 'admin@admin.com', 1),
(4, 'admin@admin.com', 1),
(5, 'admin@admin.com', 2),
(6, 'admin@admin.com', 3),
(7, 'admin@admin.com', 3),
(8, 'admin@admin.com', 3),
(9, 'admin@admin.com', 3),
(10, 'admin@admin.com', 3),
(11, 'admin@admin.com', 1),
(12, 'admin@admin.com', 1),
(13, 'admin@admin.com', 1),
(14, 'admin@admin.com', 2),
(15, 'admin@admin.com', 2),
(16, 'admin@admin.com', 2),
(17, 'admin@admin.com', 2),
(18, 'admin@admin.com', 4),
(19, 'admin@admin.com', 4),
(20, 'admin@admin.com', 4);

--
-- Volcado de datos para la tabla `pregunta2`
--

INSERT INTO `pregunta2` (`id_pregunta`, `texto_p`) VALUES
(1, '¿Cuáles son los tipos principales de clasificación de redes?'),
(2, '¿Cuál de estos elementos no sirve para montar una red local?'),
(3, '¿Que es el hardware?'),
(4, 'La memoria RAM almacena información'),
(5, '¿Se puede utilizar un computador sin sistema operativo?'),
(6, 'Tipos de programas maliciosos:'),
(7, 'Herramientas para proteger los sistemas'),
(8, 'Las amenazas pueden ser causadas por'),
(9, 'Los White hats son'),
(10, 'Las personas que "rompen" algún sistema de seguridad son denominadas'),
(11, '¿Qué pieza es un periférico de entrada?'),
(12, 'La unidad de sistema está compuesta por...'),
(13, 'El hardware gráfico está constituido por…'),
(14, '¿Qué interface es más cómoda para el usuario?'),
(15, '¿Cuál de las siguientes no es una categoría de software de aplicación?'),
(16, 'Los Lotes están escritos en:'),
(17, 'Los tipos del software son:'),
(18, 'La topología de la red se refiere a…'),
(19, '¿Cuál de las siguientes no es una topología de red?'),
(20, 'Alguna de las razones para instalar una red local de ordenadores es:');

--
-- Volcado de datos para la tabla `respuesta1`
--

INSERT INTO `respuesta1` (`id_respuesta`, `id_pregunta`) VALUES
(1, 1),
(2, 2),
(3, 6),
(4, 7),
(5, 8),
(6, 9),
(7, 10),
(8, 3),
(9, 4),
(10, 11),
(11, 12),
(12, 13),
(13, 5),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

--
-- Volcado de datos para la tabla `respuesta2`
--

INSERT INTO `respuesta2` (`id_respuesta`, `a`, `b`, `c`, `d`, `correcta`) VALUES
(1, 'LAN', 'WAN', 'Ninguna es Correcta', 'A y B son correctas', 'd'),
(2, 'Concentradores y conmutadores', 'Tarjeta de video', 'Tarjeta inalámbrica', 'Protocolo de comunicaciones', 'b'),
(3, 'Virus', 'Adware', 'Spyware', 'Todas son correctas', 'd'),
(4, 'Antivirus', 'Adware', 'Antispyware', 'A y C son correctas', 'd'),
(5, 'Programas maliciosos', 'Personal técnico interno', 'Catástrofes naturales', 'Todas son correctas', 'd'),
(6, 'Hace referencia a un hacker talentoso que a veces actúa ilegalmente', 'hacker ético.', 'Defacers', 'Persona que viola la seguridad informática para beneficio personal', 'b'),
(7, 'Defacers', 'Grey hats', 'Cracker', 'Black hats', 'c'),
(8, 'Son los componentes virtuales del PC', 'Son los componentes fisicos del PC', 'A y B son correctas', 'Ninguna respuesta es correcta', 'b'),
(9, 'temporalmente', 'Persistentemente', 'Las dos son correctas', 'Ninguna es correcta', 'a'),
(10, 'Monitor', 'Teclado', 'A y B son correctas', 'Ninguna respuesta es correcta', 'b'),
(11, 'El disco duro y la memoria', 'El cpu y la memoria principal', 'A y B son correctas', 'Ninguna respuesta es correcta', 'b'),
(12, 'Tarjetas de video', 'Periféricos de E/S', 'A y B son correctas.', 'Ninguna respuesta es correcta', 'a'),
(13, 'SI.', 'NO.', 'Depende del sistema operativo', 'Depende del computador.', 'b'),
(14, 'Una con interprete de comando', 'Una interface gráfica.', 'Ninguna es correcta.', 'Las dos son correctas.', 'b'),
(15, 'Personales', 'Entretenimiento', 'Graficadores', 'Extraordinarias', 'd'),
(16, 'Cobol', 'Foltran', 'Las dos son correctas', 'Ninguna es correcta.', 'c'),
(17, 'Sistema Operativo.', 'Programas de ampliación', 'Lenguajes de programación', 'Todas son correctas', 'd'),
(18, 'la distribución lógica de los elementos de la red', 'la distribución física de los elementos de la red', 'las dos anteriores son correctas', 'las dos anteriores son falsas', 'b'),
(19, 'Pulsera', 'Anillo', 'Bus', 'Estrella', 'a'),
(20, 'Compartir recursos en red', 'Compartir bases de datos', 'No hay razones concretas', 'A y B son correctas', 'd');

--
-- Volcado de datos para la tabla `resultado1`
--

INSERT INTO `resultado1` (`id_resultado`, `correo`) VALUES
(1, 'admin@admin.com'),
(2, 'admin@admin.com'),
(3, 'admin@admin.com'),
(4, 'admin@admin.com'),
(5, 'admin@admin.com'),
(6, 'admin@admin.com');

--
-- Volcado de datos para la tabla `resultado2`
--

INSERT INTO `resultado2` (`id_resultado`, `json`) VALUES
(1, '{"estado":"OK 200","resultados":{"correctas":2,"incorrectas":0,"totales":5}}');

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`correo`, `password`, `nombre`, `token`) VALUES
('admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'nombre', 'i88dq5qn7q495j2mcu7dfvj4o4');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;