conozco(pc, 1).
conozco(pcs, 1).
conozco(laptop, 1).
conozco(laptops, 1).
conozco(computador, 1).
conozco(computadora, 1).
conozco(computadoras, 1).
conozco(imprimir, 2).
conozco(impresora, 2).
conozco(impresoras, 2).
conozco(mouse, 3).
conozco(teclado, 4).
conozco(vpn, 5).
conozco(vpns, 5).

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

soluciones(2, ["Compruebe que la impresora este conectada a algun tomacorriente.",
               "Valide que el WiFi de la impresora este encendido y que la misma se conecte a la red.",
               "Valide que tanto la computadora como impresora este conectada a la misma red WiFi.",
               "Valide que su computadora reconoce la impresora.",
               "Proceda a instalarlos y pruebe de nuevo."]).

soluciones(3, ["Limpie el sensor optico del mouse y evite usarlo en superficies sucias.",
               "Conecte el USB del mouse al dispositivo.",
               "Cambiele las baterias al mouse, asegurese de que sean del tipo requerido.",
               "Conecte su mouse por bluetooth al dispositivo deseado."]).

soluciones(4, ["Conecte su teclado al dispositivo.",
               "Asegurese de identificar el USB de su teclado y conectelo al dispositivo.",
               "Conecte por bluetooth el telcado al su dispositivo.",
               "Retire las keycaps de su teclado y limpielo con cuidado."]).