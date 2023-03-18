:-consult(gramatica).
:-consult(basedatos).

:- dynamic entrada_usuario/1.

callcenterlog:- 
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    downcase_atom(Entrada, EntradaEnMinusculas),
    asserta(entrada_usuario(EntradaEnMinusculas)),
    usuario_solo_saluda(EntradaEnMinusculas), !,
    centerlog.

callcenterlog:- 
    centerlog2.

usuario_solo_saluda(Frase):- 
    saludo(Frase), 
    not(indica_problema(Frase)), !,
    responder_saludo.

usuario_solo_saluda(Frase):- 
    not(saludo(Frase)), 
    not(indica_problema(Frase)), !,
    responder_sin_saludo.

indica_problema(Oracion) :- conozco(P, _), sub_atom(Oracion, _, _, _, P).

responder_saludo:- 
    write("CallCenterLog:     Hola! En que lo puedo ayudar?\n").

responder_sin_saludo:- 
    write("CallCenterLog:     En que lo puedo ayudar?\n").

centerlog:- 
    write("Usuario:           "),
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

centerlog:- 
    write("CallCenterLog:     No entiendo\n"), !, 
    centerlog.

centerlog2:- 
    entrada_usuario(EntradaUsuario),
    split_string(EntradaUsuario, " ", "", Oracion),
    soy_experto_en(Palabra, Oracion), !,
    quitar_comillas(Palabra, P),
    conozco(P, Numero),
    preguntas(Numero, ListaPreguntas),
    soluciones(Numero, ListaSoluciones),
    hacer_preguntas(ListaPreguntas, ListaSoluciones),
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    downcase_atom(Entrada, Frase),
    despedida(Frase), !,
    write("CallCenterLog:     Estoy para servirle, hasta pronto").

centerlog2:- 
    write("CallCenterLog:     No entiendo2\n"), !, centerlog.

soy_experto_en(Palabra, [Palabra|_]):- quitar_comillas(Palabra, P), es_sustantivo(P,_,_), conozco(P,_).
soy_experto_en(Palabra, [Palabra|_]):- quitar_comillas(Palabra, P), es_verbo(P,_), conozco(P,_).
soy_experto_en(Palabra, [_|Resto]):- soy_experto_en(Palabra, Resto).

hacer_preguntas([], []):- 
    write("CallCenterLog:     Se recomienda ver el problema mas en detalle con un tecnico o profesional\n"), !.

hacer_preguntas([P|R1], [_|R2]):- 
    write("CallCenterLog:     "), write(P), write("\n"),
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    downcase_atom(Entrada, Frase),
    afirmacion(Frase), !,
    hacer_preguntas(R1,R2).

hacer_preguntas(_, [S|_]):- 
    write("CallCenterLog:     "), write(S), write("\n"), !.

quitar_comillas(String, Resultado) :- 
    sub_atom(String, 0, _, 0, Subcadena),
    atom_string(Resultado, Subcadena).