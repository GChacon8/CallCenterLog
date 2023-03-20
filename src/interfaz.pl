:-consult(gramatica).
:-consult(basedatos).

:- dynamic entrada_usuario/1.

/*
Nombre: callcenterlog
Descripcion: Funcion principal que inicializa la aplicacion, revisa si lo primero que ingresa 
             el usuario es un saludo convencional y de ser asi, llama a la clausula centerlog
*/
callcenterlog:- 
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    quitar_punto(Entrada, EntradaSinPunto),
    downcase_atom(EntradaSinPunto, EntradaEnMinusculas),
    asserta(entrada_usuario(EntradaEnMinusculas)),
    usuario_solo_saluda(EntradaEnMinusculas), !,
    centerlog.

/*
Nombre: callcenterlog
Descripcion: Si el usuario no saluda sino que de una vez indica su problema o pregunta algo,
             se llama a la clausula centerlog2
*/
callcenterlog:- 
    centerlog2.

/*
Nombre: usuario_solo_saluda
Descripcion: Verifica que lo primero que ingresa el usuario al iniciar el programa sea solo un 
             saludo, es decir, que no indica ningun problema

usuario_solo_saluda(Frase)
    *Frase: Oracion o Frase que ingresa el usuario
*/
usuario_solo_saluda(Frase):- 
    saludo(Frase), 
    not(indica_problema(Frase)), !,
    responder_saludo.

usuario_solo_saluda(Frase):- 
    not(saludo(Frase)), 
    not(indica_problema(Frase)), !,
    responder_sin_saludo.

/*
Nombre: indica_problema
Descripcion: Reconoce si en la oracion el usuario menciona algo con lo que es experto

indica_problema(Oracion)
    *Oracion: Oracion o Frase que ingresa el usuario
*/
indica_problema(Oracion) :- 
    conozco(P, _), 
    sub_atom(Oracion, _, _, _, P).

/*
Nombre: responder_saludo
Descripcion: Imprime "Hola! En que lo puedo ayudar?"
*/
responder_saludo:- 
    write("CallCenterLog:     Hola! En que lo puedo ayudar?\n").

/*
Nombre: responder_sin_saludo
Descripcion: Imprime "En que lo puedo ayudar?"
*/
responder_sin_saludo:- 
    write("CallCenterLog:     En que lo puedo ayudar?\n").

/*
Nombre: centerlog
Descripcion: Almacena la entrada del usuario y valida que el mismo no haya hecho una
             pregunta o pida por causas de un problema. Si lo anterior se cumple, se 
             llama a la clausula centerlog_aux
*/
centerlog:- 
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    quitar_punto(Entrada, EntradaSinPunto),
    downcase_atom(EntradaSinPunto, EntradaEnMinusculas),
    asserta(entrada_usuario(EntradaEnMinusculas)),
    not(usuario_pregunta(EntradaEnMinusculas)), !,
    centerlog_aux.

/*
Nombre: centerlog
Descripcion: Si la entrada del usuario contiene alguna pregunta o pide por posibles
             causas de un problema, se llama a la clausula centerlog_aux2 
*/
centerlog:- 
    centerlog_aux2.

/*
Nombre: centerlog2
Descripcion: Aqui el usuario pudo o no haber saludado al inicio del programa, por eso
             se valida que el mismo no haya hecho una pregunta o pida por causas de un 
             problema. Si lo anterior se cumple, se llama a la clausula centerlog_aux
*/
centerlog2:-
    entrada_usuario(EntradaUsuario),
    not(usuario_pregunta(EntradaUsuario)), !,
    centerlog_aux.

/*
Nombre: centerlog2
Descripcion: Aqui el usuario pudo o no haber saludado al inicio del programa, por eso se
             valida si la entrada del usuario contiene alguna pregunta o pide por posibles
             causas de un problema, de ser asi se llama a la clausula centerlog_aux2 
*/
centerlog2:-
    centerlog_aux2.

/*
Nombre: centerlog_aux
Descripcion: El usuario pudo haber ingresado un problema, por ejemplo "Mi impresora no funciona"
             en este caso al reconocer la palabra impresora, se consulta a la base de datos
             por preguntas y soluciones que sean utiles para diagnosticar el problema que
             presenta el usuario
*/
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

/*
Nombre: centerlog_aux
Descripcion: Si el programa no entiende algo de lo que ingresa el usuario, se imprime un mensaje 
             que dice "Perdon, no le entiendo." y se vuelve a llamar a la clausula centerlog
*/
centerlog_aux:- 
    nlp_error,
    centerlog.

/*
Nombre: centerlog_aux2
Descripcion: El usuario pudo haber hecho una pregunta o pedir por posibles causas de un problema,
             por ejemplo "Por que mi impresora no funciona?" en este caso al reconocer que se hace
             una pregunta o se pide por causas y reconocer la palabra impresora, se consulta a la
             base de datos por dichas causas para indicarcelas al usuario

            Existen varias causas, las mas comunes son:
            1. No esta conectada a alimentacion electrica.
            2. Si es WiFi no esta en la misma WiFi que su computador.
            3. No tiene instalados los drivers correctos.
            4. No tiene tinta.
*/
centerlog_aux2:-
    entrada_usuario(EntradaUsuario),
    split_string(EntradaUsuario, " ", "", Oracion),
    soy_experto_en(Palabra, Oracion),
    quitar_comillas(Palabra, P),
    conozco(P, Numero),
    causas(Numero, ListaCausas),
    motivos(ListaCausas), !,
    finallog.

/*
Nombre: centerlog_aux2
Descripcion: Si el programa no entiende algo de lo que ingresa el usuario, se imprime un mensaje 
             que dice "Perdon, no le entiendo." y se vuelve a llamar a la clausula centerlog
*/
centerlog_aux2:-
    nlp_error,
    centerlog.

/*
Nombre: finallog
Descripcion: Espera que el usuario agradezca o se despida al terminar de hacerle la consulta al
             programa
*/
finallog:-
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    quitar_punto(Entrada, EntradaSinPunto),
    downcase_atom(EntradaSinPunto, Frase),
    despedida(Frase), !,
    write("CallCenterLog:     Estoy para servirle, hasta pronto."),
    retractall(entrada_usuario(_)).

/*
Nombre: finallog
Descripcion: Si el programa no entiende algo de lo que ingresa el usuario, se imprime un mensaje 
             que dice "Perdon, no le entiendo." y se vuelve a llamar a la clausula finallog
*/
finallog:-
    nlp_error,
    finallog.

/**
Nombre: nlp_error
Descripcion: Imprime un mensaje de error "Perdon, no le entiendo."   
*/
nlp_error:-
    write("CallCenterLog:     Perdon, no le entiendo.\n").

/*
Nombre: usuario_pregunta
Descripcion: Reconoce si el usuario hace una pregunta o pide por causas de un problema

usuario_pregunta(Frase)
    *Frase: Oracion o Frase que ingresa el usuario
*/
usuario_pregunta(Frase):-
    pregunta(Frase),
    causa(Frase),
    indica_problema(Frase), !.

usuario_pregunta(Frase):-
    pregunta(Frase),
    indica_problema(Frase), !.

usuario_pregunta(Frase):-
    causa(Frase),
    indica_problema(Frase), !.

/*
Nombre: soy_experto_en
Descripcion: Reconoce palabras con las que el programa relaciona causas, preguntas y 
             soluciones, por ejemplo: "impresora", "mouse", "computadora"

soy_experto_en(Palabra, [Palabra|_])
    *Palabra: Palabra clave
    *[Palabra|_]: Primer palabra de una lista
*/
soy_experto_en(Palabra, [Palabra|_]):- 
    quitar_comillas(Palabra, P), 
    es_sustantivo(P,_,_), 
    conozco(P,_).

soy_experto_en(Palabra, [Palabra|_]):- 
    quitar_comillas(Palabra, P), 
    es_verbo(P,_), 
    conozco(P,_).

soy_experto_en(Palabra, [_|Resto]):- 
    soy_experto_en(Palabra, Resto).

/*
Nombre: diagnostico
Descripcion: Se encarga de ir haciendo preguntas para diagnosticar el problema que menciona
             el usuario. Si la respuesta es afirmativa, se pasa a la siguiente pregunta. Si
             es negativa, se da la solución para dicha pregunta. Si ya no quedan mas preguntas
             se le sugiere al usuario que vea el problema con un tecnico o profesional de campo 

diagnostico(L1, L2)
    *L1: Lista de preguntas
    *L2: Lista de soluciones
*/
diagnostico([], []):- 
    write("CallCenterLog:     Se recomienda ver el problema mas en detalle con un tecnico o profesional\n"), !.

diagnostico([P|R1], [_|R2]):- 
    retractall(entrada_usuario(_)),
    write("CallCenterLog:     "), write(P), write("\n"),
    write("Usuario:           "),
    read_line_to_string(user_input, Entrada),
    quitar_punto(Entrada, EntradaSinPunto),
    downcase_atom(EntradaSinPunto, Frase),
    asserta(entrada_usuario(Frase)),
    afirmacion(Frase), !,
    diagnostico(R1,R2).

diagnostico(_, [S|_]):- 
    entrada_usuario(Frase),
    negacion(Frase), !,
    write("CallCenterLog:     "), write(S), write("\n").

diagnostico(L1, L2):-
    nlp_error,
    diagnostico(L1,L2).

/*
Nombre: motivos
Descripcion: Se encarga de escribir todas las causas posibles de un problema en particular,
             para ello llama a la clausula escribir_motivos

motivos(Causas)
    *Causas: Lista con las causas de un problema especifico
*/    
motivos(Causas):-
    write("CallCenterLog:     Existen varias causas, las mas comunes son:\n"),
    escribir_motivos(Causas).

/*
Nombre: escribir_motivos
Descripcion: Escribe en una nueva linea cada uno de los elementos de la lista

escribir_motivos(Lista)
    *Lista: Lista con las causas de un problema especifico
*/ 
escribir_motivos(Lista):- escribir_motivos_aux(Lista, 1).

escribir_motivos_aux([], _).

escribir_motivos_aux([Elem|Resto], Indice):-
    write("                   "), write(Indice), write('. '), write(Elem), nl,
    NuevoIndice is Indice + 1,
    escribir_motivos_aux(Resto, NuevoIndice).

/*
Nombre: quitar_comillas
Descripcion: Quita las comillas de la oracion o frase que ingresa el usuario
             o bien de una palabra

quitar_comillas(String, Resultado)
    *String: Oracion o palabra con comillas
    *Resultado: Oracion o palabra sin comillas
*/ 
quitar_comillas(String, Resultado):- 
    sub_atom(String, 0, _, 0, Subcadena),
    atom_string(Resultado, Subcadena).

/*
Nombre: quitar_punto
Descripcion: Quita el punto final que puede existir en una oracion o frase que ingrese
             el usuario

quitar_punto(String, Resultado)
    *String: Oracion o frase con punto final
    *Resultado: Oracion o frase sin punto final
*/ 
quitar_punto(String, Resultado):-
    sub_atom(String, _, 1, 0, Punto),
    Punto == '.', !,
    sub_atom(String, 0, _, 1, Resultado).
quitar_punto(String, String).