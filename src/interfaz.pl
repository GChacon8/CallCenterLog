:-consult(gramatica).
:-consult(basedatos).

callcenterlog:- write("Usuario:           "),
                read_line_to_string(user_input, Entrada),
                downcase_atom(Entrada, EntradaEnMinuscula),
                usuario_saluda(EntradaEnMinuscula),
                centerlog.

usuario_saluda(Frase):- saludo(Frase), !,
                        responder_saludo.
usuario_saluda(Frase):- not(saludo(Frase)), !,
                        responder_sin_saludo.

responder_saludo:- write("CallCenterLog:     Hola! En que lo puedo ayudar?\n").
responder_sin_saludo:- write("CallCenterLog:     En que lo puedo ayudar?\n").

centerlog:- write("Usuario:           "),
            readln(Oracion,_,_,_,lowercase),
            phrase(oracion, Oracion), 
            soy_experto_en(Palabra, Oracion), !, 
            conozco(Palabra, Numero),
            preguntas(Numero, ListaPreguntas),
            soluciones(Numero, ListaSoluciones),
            hacer_preguntas(ListaPreguntas, ListaSoluciones),
            write("Usuario:           "),
            read_line_to_string(user_input, Entrada),
            downcase_atom(Entrada, Frase),
            despedida(Frase), !,
            write("CallCenterLog:     Estoy para servirle, hasta pronto").
centerlog:- write("CallCenterLog:     No te entendi\n"), !, centerlog.

soy_experto_en(Palabra, [Palabra|_]):- es_sustantivo(Palabra,_,_), conozco(Palabra,_).
soy_experto_en(Palabra, [Palabra|_]):- es_verbo(Palabra,_), conozco(Palabra,_).
soy_experto_en(Palabra, [_|Resto]):- soy_experto_en(Palabra, Resto).

hacer_preguntas([], []):- write("CallCenterLog:     Se recomienda ver el problema con un tecnico o profesional"), !.
hacer_preguntas([P|R1], [_|R2]):- write("CallCenterLog:     "), write(P), write("\n"),
                                  write("Usuario:           "),
                                  read_line_to_string(user_input, Entrada),
                                  downcase_atom(Entrada, Frase),
                                  afirmacion(Frase), !,
                                  hacer_preguntas(R1,R2).
hacer_preguntas(_, [S|_]):- write("CallCenterLog:     "), write(S), write("\n"), !.