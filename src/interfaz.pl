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

indica_problema(Oracion) :- 
    conozco(P, _), 
    sub_atom(Oracion, _, _, _, P).

responder_saludo:- 
    write("CallCenterLog:     Hola! En que lo puedo ayudar?\n").

responder_sin_saludo:- 
    write("CallCenterLog:     En que lo puedo ayudar?\n").

centerlog:- 
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    downcase_atom(Entrada, EntradaEnMinusculas),
    asserta(entrada_usuario(EntradaEnMinusculas)),
    not(usuario_pregunta(EntradaEnMinusculas)), !,
    centerlog_aux.

centerlog:- 
    centerlog_aux2.

centerlog2:-
    entrada_usuario(EntradaUsuario),
    not(usuario_pregunta(EntradaUsuario)), !,
    centerlog_aux.

centerlog2:-
    centerlog_aux2.

centerlog_aux:- 
    entrada_usuario(EntradaUsuario),
    split_string(EntradaUsuario, " ", "", Oracion),
    soy_experto_en(Palabra, Oracion),
    quitar_comillas(Palabra, P),
    conozco(P, Numero),
    preguntas(Numero, ListaPreguntas),
    soluciones(Numero, ListaSoluciones),
    diagnostico(ListaPreguntas, ListaSoluciones), !,
    finallog.

centerlog_aux:- 
    nlp_error,
    centerlog.

centerlog_aux2:-
    entrada_usuario(EntradaUsuario),
    split_string(EntradaUsuario, " ", "", Oracion),
    soy_experto_en(Palabra, Oracion),
    quitar_comillas(Palabra, P),
    conozco(P, Numero),
    causas(Numero, ListaCausas),
    motivos(ListaCausas), !,
    finallog.

centerlog_aux2:-
    nlp_error,
    centerlog.

finallog:-
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    downcase_atom(Entrada, Frase),
    despedida(Frase), !,
    write("CallCenterLog:     Estoy para servirle, hasta pronto.").

finallog:-
    nlp_error,
    finallog.

nlp_error:-
    write("CallCenterLog:     Perdon, no le entiendo.\n").

usuario_pregunta(Frase):-
    pregunta(Frase),
    causa(Frase),
    indica_problema(Frase), !.

usuario_pregunta(Frase):-
    causa(Frase),
    indica_problema(Frase), !.

soy_experto_en(Palabra, [Palabra|_]):- quitar_comillas(Palabra, P), es_sustantivo(P,_,_), conozco(P,_).
soy_experto_en(Palabra, [Palabra|_]):- quitar_comillas(Palabra, P), es_verbo(P,_), conozco(P,_).
soy_experto_en(Palabra, [_|Resto]):- soy_experto_en(Palabra, Resto).

diagnostico([], []):- 
    write("CallCenterLog:     Se recomienda ver el problema mas en detalle con un tecnico o profesional\n"), !.

diagnostico([P|R1], [_|R2]):- 
    write("CallCenterLog:     "), write(P), write("\n"),
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    downcase_atom(Entrada, Frase),
    afirmacion(Frase), !,
    diagnostico(R1,R2).

diagnostico(_, [S|_]):- 
    write("CallCenterLog:     "), write(S), write("\n"), !.

motivos(Causas):-
    write("CallCenterLog:     Existen varias causas, las mas comunes son:\n"),
    escribir_motivos(Causas).

escribir_motivos(Lista):- escribir_motivos_aux(Lista, 1).

escribir_motivos_aux([], _).
escribir_motivos_aux([Elem|Resto], Indice) :-
    write("                   "), write(Indice), write('. '), write(Elem), nl,
    NuevoIndice is Indice + 1,
    escribir_motivos_aux(Resto, NuevoIndice).

quitar_comillas(String, Resultado) :- 
    sub_atom(String, 0, _, 0, Subcadena),
    atom_string(Resultado, Subcadena).