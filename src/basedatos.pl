conozco(pc, 1).
conozco(pcs, 1).
conozco(laptop, 1).
conozco(laptops, 1).
conozco(portatil, 1).
conozco(computador, 1).
conozco(computadora, 1).
conozco(computadoras, 1).
conozco(imprimir, 2).
conozco(impresora, 2).
conozco(impresoras, 2).
conozco(impresion, 2).
conozco(mouse, 3).
conozco(raton, 3).
conozco(clic, 3).
conozco(click, 3).
conozco(clicker, 3).
conozco(puntero, 3).
conozco(teclado, 4).
conozco(teclados, 4).
conozco(teclear, 4).
conozco(digitar, 4).
conozco(keyboard, 4).
conozco(tecladito, 4).
conozco(tecladote, 4).
conozco(escribir, 4).
conozco(escribe, 4).
conozco(vpn, 5).
conozco(vpns, 5).
conozco(audifonos, 6).
conozco(audifono, 6).
conozco(auriculares, 6).
conozco(auricular, 6).
conozco(headphones, 6).
conozco(headsets, 6).
conozco(headset, 6).
conozco(cascos, 6).
conozco(parlante, 7).
conozco(speakers, 7).
conozco(parlantes, 7).
conozco(speaker, 7).
conozco(altoparlante, 7).
conozco(altoparlantes, 7).
conozco(bocinas, 7).
conozco(bocina, 7).
conozco(altavoz, 7).
conozco(altavoces, 7).
conozco(monitor, 8).
conozco(pantalla, 8).
conozco(monitores, 8).
conozco(pantallas, 8).
conozco(display, 8).
conozco(displays, 8).
conozco(word, 9).
conozco(excel, 10).
conozco(powerpoint, 11).
conozco(presentacion, 11).
conozco(office, 12).
conozco(wifi, 13).
conozco(internet, 13).
conozco(router, 13).
conozco(modem, 13).
conozco(conexion, 13).


causas(1, ["No esta conectada a alimentacion electrica.",
           "Si es portatil, no esta cargada.",
           "Tiene el sistema de refrigeracion danado.",
           "Los ventiladores estan sucios o danados.",
           "Tiene muchas pestanas o un programa muy grande abierto.",
           "No tiene suficiente espacio en el disco."]).

causas(2, ["No esta conectada a alimentacion electrica.",
           "Si es WiFi no esta en la misma WiFi que su computador.",
           "No tiene instalados los drivers correctos.",
           "No tiene tinta."]).

causas(3, ["El mouse tiene suciedad en el sensor optico.",
           "El USB del mouse no esta conectado al dispositivo.",
           "El mouse ya no tiene bateria.",
           "El mouse no se ha conectado por bluetooth."]).

causas(4, ["Su teclado no esta conectado al dispositivo.",
           "El USB de su teclado no esta conectado a su dispositivo.",
           "No ha conectado por bluetooth su teclado todavia.",
           "Su teclado esta sucio."]).

causas(6, ["En caso de ser inalambricos, sus audifonos no se han conectado al dispositivo.",
           "En caso de ser inalambricos, sus audifonos estan descargados",
           "En caso de tenerlo, tiene el boton de silenciado prendido.",
           "No se ha cambiado el output de sonido a tus audifonos."]).

causas(7, ["En caso de ser inalambricos, su parlante no se ha conectado al dispositivo.",
           "Su parlante se encuentra descargado.",
           "En caso de tenerlo, tiene el boton de silenciado prendido.",
           "Su parlante tiene el volumen en 0 o muy bajo.",
           "No se ha cambiado el output de sonido a su parlante."]).

causas(8, ["Su monitor no esta conectado a la alimentacion electrica.",
           "Su monitor no esta conectado al su computadora.",
           "Su monitor no esta prendido.",
           "Su monitor no tiene la configuracion visual correcta."]).

causas(9, ["Su word no esta actualizado para su correcto uso.",
           "Usted no tiene ninguna licencia de uso de office.",
           "Su memoria esta demasiado saturada.",
           "Usted no tiene espacio suficiente para guardar un archivo de word."]).

causas(10, ["Su excel no esta actualizado para su correcto uso.",
           "Usted no tiene ninguna licencia de uso de office.",
           "Su memoria esta demasiado saturada.",
           "Usted no tiene espacio suficiente para guardar un archivo de excel.",
           "Usted no se encuentra en la sheet u hoja correspondiente."]).

causas(11, ["Su powerpoint no esta actualizado para su correcto uso.",
           "Usted no tiene ninguna licencia de uso de office.",
           "Su memoria esta demasiado saturada.",
           "Usted no tiene espacio suficiente para guardar un archivo de powerpoint."]).

causas(12, ["Su office no se encuentra actualizado.",
           "Usted no tiene ninguna licencia de uso de office.",
           "Su memoria esta demasiado saturada.",
           "Usted no tiene espacio suficiente para guardar un archivos generados por programas de office."]).

causas(13, ["Usted no ha pagado su plan de interntet.",
           "Su router no se encuentra bien conectado.",
           "Todavia no se ha conectado a la red wifi.",
           "Estas afuera del rango de senal proporcionado."]).

preguntas(1, ["Ya reviso que tenga alimentacion electrica?",
              "Si es portatil, esta cargada?",
              "Tiene el sistema de refrigeracion en buenas condiciones?",
              "Tiene los ventiladores en buen estado?",
              "Tiene pocas pestanas abiertas y programas ligeros?",
              "Tiene espacio disponible en el disco duro?"]).

preguntas(2, ["Ya reviso que tenga alimentacion electrica?",
              "Su impresora tiene conexion WiFi?",
              "Esta su impresora en la misma red que su computador?",
              "Es primera vez que utiliza su computador con esta impresora?",
              "Ya instalo los drivers de su impresora?"]).

preguntas(3, ["El sensor optico del mouse esta limpio?",
              "El USB del mouse esta conectado al dispositivo?",
              "El mouse tiene bateria con carga?",
              "Ya conecto el mouse por bluetooth al dispositivo?"]).

preguntas(4, ["Ya conecto su teclado al dispositivo deseado?",
              "El USB de su teclado esta conectado al dispositivo?",
              "Su teclado esta conectado por bluetooth al dispositivo?",
              "Ha limpiado su teclado recientemente?"]).

preguntas(6, ["Si sus audifonos son inalambricos, los tiene conectados al dispositivo?",
              "Si sus audifonos son inalambricos, los tiene suficientemente cargados?",
              "En caso de tenerlo, tiene el boton de silenciado apagado?",
              "Tiene sus audifonos como el output de sonido de su dispositivo?"]).

preguntas(7, ["Si su parlante es inalambricos, lo tiene conectado al dispositivo?",
              "Si es inalambrico, su parlante tiene suficiente carga?",
              "En caso de tenerlo, tiene el boton de silenciado apagado?",
              "Su parlante tiene el volumen mayor a 0 y suficientemente alto?",
              "Tiene como output de sonido su parlante?"]).

preguntas(8, ["Su monitor se encuentra conectado a la alimentacion electrica?",
              "Su monitor se encuentra conectado a su computadora?",
              "Su monitor esta prendido?",
              "Tiene su monitor la configuracion grafica correcta?"]).

preguntas(9, ["Su word esta actualizado o tiene la ultima version?",
              "Tiene una licencia activa de office?",
              "Tiene pocas pestanas y programas abiertos?",
              "Tiene suficiente espacio en disco para guardar un archivo de word?"]).

preguntas(10, ["Su excel esta actualizado o tiene la ultima version?",
              "Tiene una licencia activa de office?",
              "Tiene pocas pestanas y programas abiertos?",
              "Tiene suficiente espacio en disco para guardar un archivo de excel?",
              "Se encuentra usted en la sheet u hoja correspondiente?"]).

preguntas(11, ["Su powerpoint esta actualizado o tiene la ultima version?",
              "Tiene una licencia activa de office?",
              "Tiene pocas pestanas y programas abiertos?",
              "Tiene suficiente espacio en disco para guardar un archivo de powerpoint?"]).

preguntas(12, ["Su office esta actualizado o tiene la ultima version?",
              "Tiene una licencia activa de office?",
              "Tiene pocas pestanas y programas abiertos?",
              "Tiene suficiente espacio en disco para guardar archivos de office?"]).

preguntas(13, ["Su plan de internter se encuentra activo y pago?",
              "Su router se encuentra bien conectado?",
              "Ya se conecto a la red wifi con su dispositivo?",
              "Esta cerca del router o dispositivo de senal?"]).

soluciones(1, ["Conecte su computadora al enchufe electrico.",
               "Cargue su laptop durante un tiempo suficiente.",
               "Reemplace el sistema de refrigeracion por uno nuevo.",
               "Limpie o cambie los ventiladores involucrados.",
               "Cierre las pestanas menos importantes y cierre programas pesados. En otro caso, anadale memoria a su computadora.",
               "Borre datos en disco que no este en uso o aumente el espacio en el disco. En otro caso puede conectar un dispositivo de almacenamiento externo."]).

%%https://www.intelec.co.cr/COMPONENTES/MEMORIAS-PARA-LAPTOP
%%https://www.intelec.co.cr/COMPONENTES/DISCOS-EN-ESTADO-S%C3%93LIDO-(SSD)?page=2&


soluciones(2, ["Compruebe que la impresora este conectada a algun tomacorriente.",
               "Valide que el WiFi de la impresora este encendido y que la misma se conecte a la red.",
               "Valide que tanto la computadora como impresora este conectada a la misma red WiFi.",
               "Valide que su computadora reconoce la impresora.",
               "Proceda a instalarlos y pruebe de nuevo."]).

%% https://support.hp.com/es-es/document/ish_2754723-2519311-16

soluciones(3, ["Limpie el sensor optico del mouse y evite usarlo en superficies sucias.",
               "Conecte el USB del mouse al dispositivo.",
               "Cambiele las baterias al mouse, asegurese de que sean del tipo requerido.",
               "Conecte su mouse por bluetooth al dispositivo deseado."]).

%% https://support.microsoft.com/es-es/windows/-c%C3%B3mo-limpio-el-mouse-o-el-teclado-de-microsoft-889f667b-3909-35db-af54-5091373c6219#:~:text=Limpiar%20el%20teclado&text=Humedece%20ligeramente%20un%20pa%C3%B1o%20sin,gotee%20agua%20en%20el%20teclado.

soluciones(4, ["Conecte su teclado al dispositivo.",
               "Asegurese de identificar el USB de su teclado y conectelo al dispositivo.",
               "Conecte por bluetooth el telcado al su dispositivo.",
               "Retire las keycaps de su teclado y limpielo con cuidado."]).

%% https://support.microsoft.com/es-es/windows/-c%C3%B3mo-limpio-el-mouse-o-el-teclado-de-microsoft-889f667b-3909-35db-af54-5091373c6219#:~:text=Limpiar%20el%20teclado&text=Humedece%20ligeramente%20un%20pa%C3%B1o%20sin,gotee%20agua%20en%20el%20teclado.

soluciones(6, ["Conecte sus audifonos al dispositivo.",
               "Cargue sus audifonos el tiempo suficiente previo a utilizarlos.",
               "Desactive el boton de mute o silenciado en caso de tenerlo.",
               "Asegurese de cambiar sus audifonos al output de sonido de su dispositivo."]).

%% https://www.youtube.com/watch?v=vLS6K6ohEgc&ab_channel=solvetic.com

soluciones(7, ["Conecte su parlante al dispositivo.",
               "Cargue su parlante el tiempo suficiente previo a utilizarlo.",
               "Desactive el boton de mute o silenciado en caso de tenerlo.",
               "Suba el volumen de su parlante hasta que sea suficientemente alto para escucharlo.",
               "Asegurese de cambiar el output de sonido a su parlante."]).

%% https://www.youtube.com/watch?v=vLS6K6ohEgc&ab_channel=solvetic.com

soluciones(8, ["Conecte su monitor a la alimentacion electrica.",
               "Conecte su monitor a su computadora.",
               "Encuentre y presione el boton de encendido de su monitor.",
               "Asegurese de tener la configuracion grafica correcta."]).

%% https://www.intel.la/content/www/xl/es/support/articles/000023767/graphics.html

soluciones(9, ["Actualice su version de word o de office.",
               "Compre o consiga una licencia de office para usar word.",
               "Cierre los programas que no estan en uso o los menos importantes para aliviar el uso de memoria.",
               "Libere espacio en disco o compre mas espacio para su computadora."]).


%% https://www.gollo.com/kingston-memoria-usb-dtse9-2-0-32-32gb
%% https://www.microsoft.com/en-us/microsoft-365/business/compare-all-microsoft-365-business-products-b?&ef_id=CjwKCAjwiOCgBhAgEiwAjv5whD5PclH7VhCGNsBEf_XNXVlUnJNc5ZlYyJMR2OlD6_CLoY-2G-NVJxoCDeoQAvD_BwE:G:s&OCID=AIDcmm409lj8ne_SEM_CjwKCAjwiOCgBhAgEiwAjv5whD5PclH7VhCGNsBEf_XNXVlUnJNc5ZlYyJMR2OlD6_CLoY-2G-NVJxoCDeoQAvD_BwE:G:s&lnkd=Google_O365SMB_Brand&gclid=CjwKCAjwiOCgBhAgEiwAjv5whD5PclH7VhCGNsBEf_XNXVlUnJNc5ZlYyJMR2OlD6_CLoY-2G-NVJxoCDeoQAvD_BwE
%% https://support.microsoft.com/es-es/office/instalar-actualizaciones-de-office-2ab296f3-7f03-43a2-8e50-46de917611c5#:~:text=Abra%20cualquier%20aplicaci%C3%B3n%20de%20Office,Opciones%20de%20actualizaci%C3%B3n%20%3E%20Actualizar%20ahora.

soluciones(10, ["Actualice su version de excel o de office.",
               "Compre o consiga una licencia de office para usar excel.",
               "Cierre los programas que no estan en uso o los menos importantes para aliviar el uso de memoria.",
               "Libere espacio en disco o compre mas espacio para su computadora.",
               "Vaya a la hoja de excel correspondiente, abajo a la izquiera."]).

soluciones(11, ["Actualice su version de powerpoint o de office.",
               "Compre o consiga una licencia de office para usar powerpoint.",
               "Cierre los programas que no estan en uso o los menos importantes para aliviar el uso de memoria.",
               "Libere espacio en disco o compre mas espacio para su computadora."]).


soluciones(12, ["Actualice su version de office.",
               "Compre o consiga una licencia de office para usar sus programas",
               "Cierre los programas que no estan en uso o los menos importantes para aliviar el uso de memoria.",
               "Libere espacio en disco o compre mas espacio para su computadora."]).

soluciones(13, ["Compre alguno de los planes de internet proporcionado por las distintas companias.",
               "Conecte bien su router a la alimentacion y ethernet.",
               "Conecte su dispositivo a la red wifi local.",
               "Acerquese a el dispositivo emisor de senal wifi o conecte un cable de red a su dispositivo."]).

%%https://www.kolbi.cr/wps/portal/kolbi_dev/hogares/internet/internet-individual/1-a-100-mbps

