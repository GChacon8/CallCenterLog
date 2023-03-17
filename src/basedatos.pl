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

preguntas(2, ["Ya reviso que tenga alimentacion electrica?",
              "Su impresora tiene conexion WiFi?",
              "Esta su impresora en la misma red que su computador?",
              "Es primera vez que utiliza su computador con esta impresora?",
              "Ya instalo los drivers de su impresora?"]).

soluciones(2, ["Compruebe que la impresora este conectada a algun tomacorriente",
               "Valide que el WiFi de la impresora este encendido y que la misma se conecte a la red",
               "Valide que tanto la computadora como impresora este conectada a la misma red WiFi",
               "Valide que su computadora reconoce la impresora",
               "Proceda a instalarlos y pruebe de nuevo"]).