:-consult(gramatica).

test:- write("Escribe una oracion: "), readln(Oracion,_,_,_,lowercase), phrase(oracion, Oracion), !, write("Te pude entender\n"), test.
test:- write("No te entendi\n"), !, test.

callcenterlog:- write("Usuario:           "),
                read_line_to_string(user_input, Oracion),
                downcase_atom(Oracion, OracionEnMinusculas),
                existe_saludo(OracionEnMinusculas),
                consultas.

existe_saludo(Oracion):- saludo(Oracion),
                         responder_saludo, !.
existe_saludo(Oracion):- not(saludo(Oracion)),
                         responder_sin_saludo, !.

responder_saludo:- write("CallCenterLog:     Hola! En que lo puedo ayudar?\n").
responder_sin_saludo:- write("CallCenterLog:     En que lo puedo ayudar?\n").

consultas:- write("Usuario:           "),
            readln(Oracion,_,_,_,lowercase),
            phrase(oracion, Oracion), !, 
            write("CallCenterLog:     Te pude entender\n"), 
            consultas.
consultas:- write("CallCenterLog:     No te entendi\n"), !, consultas.
