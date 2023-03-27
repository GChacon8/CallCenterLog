% N: Número (singular o plural)
% G: Género (masculino o femenino)
% P: Palabra que se obtiene al considerar el género, número o ambos

% Pronombres 
pronombre(G, N) --> [P], {es_pronombre(P, G, N)}.
es_pronombre(yo, masculino, singular).
es_pronombre(tu, masculino, singular).
es_pronombre(el, masculino, singular).
es_pronombre(ella, femenino, singular).
es_pronombre(nosotros, masculino, plural).
es_pronombre(nosotras, femenino, plural).
es_pronombre(me, _, singular).
es_pronombre(se, _, singular).
es_pronombre(nos, _, plural).
es_pronombre(mi, _, singular).
es_pronombre(mis, _, plural).
% Pronombres interrogativos
es_pronombre(que, _, singular).
es_pronombre(quien, _, singular).
es_pronombre(quienes, _, plural).
es_pronombre(cual, _, singular).
es_pronombre(cuales, _, plural).
es_pronombre(cuanto, _, singular).
es_pronombre(cuanta, _, singular).
es_pronombre(cuantos, _, plural).
es_pronombre(cuantas, _, plural).
es_pronombre(como, _, singular).
es_pronombre(donde, _, singular).
es_pronombre(cuando, _, singular).

% Adverbios
adverbio(G, N) --> [P], {es_adverbio(P, G, N)}.
es_adverbio(si, _, _).
es_adverbio(no, _, _).
es_adverbio(tambien, _, _).
es_adverbio(obvio, _, _).
es_adverbio(claro, _, _).
es_adverbio(claramente, _, _).
es_adverbio(finalmente, _, singular).
es_adverbio(ninguno, masculino, singular).
es_adverbio(ninguna, femenino, singular).
es_adverbio(ningunos, masculino, plural).
es_adverbio(ningunas, femenino, plural).

% Adjetivos
adjetivo(G, N) --> [P], {es_adjetivo(P, G, N)}.
es_adjetivo(mal, _, singular).
es_adjetivo(malo, masculino, singular).
es_adjetivo(mala, femenino, singular).
es_adjetivo(malos, masculino, plural).
es_adjetivo(malas, femenino, plural).
es_adjetivo(danado, masculino, singular).
es_adjetivo(danada, femenino, singular).
es_adjetivo(danados, masculino, plural).
es_adjetivo(danadas, femenino, plural).
es_adjetivo(encendido, masculino, singular).
es_adjetivo(encendida, femenino, singular).
es_adjetivo(encendidos, masculino, plural).
es_adjetivo(encendidas, femenino, plural).
es_adjetivo(conectado, masculino, singular).
es_adjetivo(conectada, femenino, singular).
es_adjetivo(conectados, masculino, plural).
es_adjetivo(conectadas, femenino, plural).
es_adjetivo(desconectado, masculino, singular).
es_adjetivo(desconectada, femenino, singular).
es_adjetivo(desconectados, masculino, plural).
es_adjetivo(desconectadas, femenino, plural).

% Verbos
verbo(N) --> [P], {es_verbo(P, N)}.
es_verbo(funciona, singular).
es_verbo(funcione, singular).
es_verbo(funcionan, plural).
es_verbo(funcionen, plural).
es_verbo(funcionando, _).
es_verbo(es, singular).
es_verbo(son, plural).
es_verbo(era, singular).
es_verbo(eran, plural).
es_verbo(estoy, singular).
es_verbo(esta, singular).
es_verbo(estan, plural).
es_verbo(estamos, plural).
es_verbo(tengo, singular).
es_verbo(tiene, singular).
es_verbo(tenemos, plural).
es_verbo(tienen, plural).
es_verbo(imprimir, _).
es_verbo(veo, singular).
es_verbo(noto, singular).
es_verbo(ven, plural).
es_verbo(notan, plural).
es_verbo(parece, singular).
es_verbo(parecen, plural).
es_verbo(creo, singular).
es_verbo(cree, singular).
es_verbo(creen, plural).
es_verbo(creemos, plural).
es_verbo(dar, singular).
es_verbo(dame, singular).
es_verbo(deme, singular).
es_verbo(leo, singular).
es_verbo(lee, singular).
es_verbo(leemos, plural).
es_verbo(leen, plural).

% Sustantivos
sustantivo(G, N) --> [P], {es_sustantivo(P, G, N)}.
es_sustantivo(pc, _, singular).
es_sustantivo(pcs, _, plural).
es_sustantivo(laptop, femenino, singular).
es_sustantivo(laptops, femenino, plural).
es_sustantivo(computador, masculino, singular).
es_sustantivo(computadora, femenino, singular).
es_sustantivo(computadoras, femenino, plural).
es_sustantivo(impresora, femenino, singular).
es_sustantivo(impresoras, femenino, plural).
es_sustantivo(mouse, masculino, singular).
es_sustantivo(teclado, masculino, singular).
es_sustantivo(vpn, femenino, singular).
es_sustantivo(vpns, femenino, plural).
es_sustantivo(callcenterlog, _, singular).
es_sustantivo(amigo, masculino, singular).
es_sustantivo(amiga, femenino, singular).
es_sustantivo(bro, masculino, singular).
es_sustantivo(problema, masculino, singular).
es_sustantivo(problemas, masculino, plural).
es_sustantivo(causa, _, singular).
es_sustantivo(causas, _, plural).
es_sustantivo(motivo, _, singular).
es_sustantivo(motivos, _, plural).
es_sustantivo(caso, _, singular).
es_sustantivo(casos, _, plural).
es_sustantivo(origen, _, singular).
es_sustantivo(origenes, _, plural).
es_sustantivo(razon, _, singular).
es_sustantivo(razones, _, plural).
es_sustantivo(fuente, _, singular).
es_sustantivo(fuentes, _, plural).
es_sustantivo(justificacion, _, singular).
es_sustantivo(justificaciones, _, plural).
es_sustantivo(principio, _, singular).
es_sustantivo(principios, _, plural).
es_sustantivo(referencia, _, singular).
es_sustantivo(referencias, _, plural).
es_sustantivo(enlace, _, singular).
es_sustantivo(enlaces, _, plural).
es_sustantivo(link, _, singular).
es_sustantivo(links, _, plural).
es_sustantivo(libro, masculino, singular).
es_sustantivo(libros, masculino, plural).
es_sustantivo(gato, masculino, singular).
es_sustantivo(gatos, masculino, plural).
es_sustantivo(perro, masculino, singular).
es_sustantivo(perros, masculino, plural).
es_sustantivo(profesor, masculino, singular).
es_sustantivo(profesores, masculino, plural).
es_sustantivo(profesora, femenino, singular).
es_sustantivo(profesoras, femenino, plural).

% Determinantes
determinante(G, N) --> [P], {es_determinante(P, G, N)}.
es_determinante(el, masculino, singular).
es_determinante(los, masculino, plural).
es_determinante(la, femenino, singular).
es_determinante(las, femenino, plural).
es_determinante(un, masculino, singular).
es_determinante(una, femenino, singular).
es_determinante(unos, masculino, plural).
es_determinante(unas, femenino, plural).
% demostrativos
es_determinante(este, masculino, singular).
es_determinante(esta, femenino, singular).
es_determinante(ese, masculino, singular).
es_determinante(esa, femenino, singular).
es_determinante(aquel, masculino, singular).
es_determinante(aquella, femenino, singular).
es_determinante(estos, masculino, plural).
es_determinante(estas, femenino, plural).
es_determinante(esos, masculino, plural).
es_determinante(esas, femenino, plural).
es_determinante(aquellos, masculino, plural).
es_determinante(aquellas, femenino, plural).

%Preposiciones 
preposiciones --> [].
preposiciones --> [a].
preposiciones --> [ante].
preposiciones --> [bajo].
preposiciones --> [con].
preposiciones --> [contra].
preposiciones --> [de].
preposiciones --> [desde].
preposiciones --> [durante].
preposiciones --> [en].
preposiciones --> [entre].
preposiciones --> [hacia].
preposiciones --> [hasta].
preposiciones --> [mediante].
preposiciones --> [para].
preposiciones --> [por].
preposiciones --> [segun].
preposiciones --> [sin].
preposiciones --> [sobre].
preposiciones --> [tras].

% Conjunciones 
conjuncion --> [].
conjuncion --> [y].
conjuncion --> [e].
conjuncion --> [o].
conjuncion --> [u].
conjuncion --> [ni].
conjuncion --> [que].
conjuncion --> [pero].
conjuncion --> [aunque].
conjuncion --> [sino].

% Interjecciones
interjeccion --> [].
interjeccion --> [hi].
interjeccion --> [hey].
interjeccion --> [holi].
interjeccion --> [hello].
interjeccion --> [hola].
interjeccion --> [buen].
interjeccion --> [dia].
interjeccion --> [buenos].
interjeccion --> [dias].
interjeccion --> [buenas].
interjeccion --> [tardes].
interjeccion --> [noches].
interjeccion --> [ok].
interjeccion --> [oka].
interjeccion --> [okey].
interjeccion --> [oks].
interjeccion --> [okis].
interjeccion --> [muchas].
interjeccion --> [muchisimas].
interjeccion --> [listo].
interjeccion --> [gracias].
interjeccion --> [de].
interjeccion --> [acuerdo].
interjeccion --> [aja].
interjeccion --> [mjm].
interjeccion --> [mhm].

vacio(_) --> [].

/*
Nombre: saludo
Descripcion: Busca si la entrada del usuario tiene alguna expresion reconocida como saludo

saludo(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "hola").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "hi").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "hey").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "buen dia").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "buenos dias").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "buenas tardes").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "buenas noches").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "hello").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "buenas").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "holi").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "disculpe").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "con permiso").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "permiso").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "que tal").
saludo(Oracion) :- sub_atom(Oracion, _, _, _, "todo bien").

/*
Nombre: afirmacion
Descripcion: Busca si la entrada del usuario tiene alguna expresion reconocida como afirmacion

afirmacion(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "ok").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "oks").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "si").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "si claro").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "afirmativo").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "asi es").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "obvio").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "si claramente").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "seguro si").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "por supuesto que si").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "aja").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "mjm").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "mhm").
afirmacion(Oracion) :- sub_atom(Oracion, _, _, _, "me parece que si").

/*
Nombre: negacion
Descripcion: Busca si la entrada del usuario tiene alguna expresion reconocida como negacion

negacion(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "no").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "nop").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "negativo").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "seguro no").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "creo que no").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "parece que no").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "me parece que no").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "por supuesto que no").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "no se").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "no estoy seguro").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "quizas").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "quiza").
negacion(Oracion) :- sub_atom(Oracion, _, _, _, "puede ser").

/*
Nombre: pregunta
Descripcion: Busca si la entrada del usuario contiene alguna palabra o expresion de pregunta

pregunta(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cual").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cuales").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "sabe cual").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "sabe cuales").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "como").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cuando").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "donde").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "que").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "por que").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "quien").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "quienes").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cuanto").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cuanta").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cuantos").
pregunta(Oracion) :- sub_atom(Oracion, _, _, _, "cuantas").

/*
Nombre: causa
Descripcion: Busca si la entrada del usuario contiene la palabra "causas" o algun sinonimo de esta

causa(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
causa(Oracion) :- sub_atom(Oracion, _, _, _, "causa").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "causas").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "motivo").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "motivos").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "razon").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "razones").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "caso").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "casos").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "origen").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "origenes").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "fuente").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "fuentes").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "justificacion").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "justificaciones").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "principio").
causa(Oracion) :- sub_atom(Oracion, _, _, _, "principios").

/*
Nombre: enlace
Descripcion: Busca si la entrada del usuario contiene la palabra "referencias" o algun sinonimo de esta

enlace(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
enlace(Oracion) :- sub_atom(Oracion, _, _, _, "referencia").
enlace(Oracion) :- sub_atom(Oracion, _, _, _, "referencias").
enlace(Oracion) :- sub_atom(Oracion, _, _, _, "enlaces").
enlace(Oracion) :- sub_atom(Oracion, _, _, _, "enlace").
enlace(Oracion) :- sub_atom(Oracion, _, _, _, "links").
enlace(Oracion) :- sub_atom(Oracion, _, _, _, "link").

/*
Nombre: despedida
Descripcion: Busca si la entrada del usuario tiene alguna expresion reconocida como despedida

despedida(Oracion) 
    *Oracion: Oracion o Frase que ingresa el usuario
*/
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "ok").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "oka").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "okey").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "oks").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "okis").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "gracias").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "muchas gracias").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "muchisimas gracias").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "adios").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "hasta luego").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "bye").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "listo").
despedida(Oracion) :- sub_atom(Oracion, _, _, _, "listo gracias").

/*
Nombre: oracion
Descripcion: Define la estructura de las oraciones permitidas por la grámatica libre de contexto
*/
oracion --> sintagma_nominal(N), sintagma_verbal(N).
oracion --> interjeccion.
oracion --> interjeccion, interjeccion.
oracion --> interjeccion, interjeccion, interjeccion.
oracion --> interjeccion, sintagma_nominal(_).
oracion --> interjeccion, sintagma_nominal(_), sintagma_nominal(N), sintagma_verbal(N).
oracion --> interjeccion, sintagma_nominal(N), sintagma_verbal(N).
oracion --> adverbio(_, _).
oracion --> adverbio(_, _), adverbio(_, _).
oracion --> adverbio(_, _), sintagma_nominal(N), sintagma_verbal(N).

/*
Nombre: sintagma_nominal
Descripcion: Define las posibles estructuras permitidas de los sintagmas nominales
*/
sintagma_nominal(N) --> vacio(N).
sintagma_nominal(N) --> pronombre(_, N).
sintagma_nominal(N) --> sustantivo(_, N).
sintagma_nominal(N) --> pronombre(G, N), sustantivo(G, N).
sintagma_nominal(N) --> preposiciones, pronombre(_, N).
sintagma_nominal(N) --> preposiciones, sustantivo(_, N).
sintagma_nominal(N) --> preposiciones, sustantivo(_, N), preposiciones, sustantivo(_, N).
sintagma_nominal(N) --> determinante(G, N), sustantivo(G, N).

/*
Nombre: sintagma_verbal
Descripcion: Define las posibles estructuras permitidas de los sintagmas verbales
*/
sintagma_verbal(N) --> verbo(N).
sintagma_verbal(N) --> verbo(N), adjetivo(_, N).
sintagma_verbal(N) --> verbo(N), adjetivo(_, N), conjuncion, adjetivo(_, N).
sintagma_verbal(N) --> verbo(N), conjuncion, adverbio(_, N).
sintagma_verbal(N) --> adverbio(_, N), verbo(N).
sintagma_verbal(N) --> adverbio(_, N), verbo(N), verbo(N).
sintagma_verbal(N) --> adverbio(_, N), verbo(N), adjetivo(_, N).
sintagma_verbal(N) --> verbo(N), sintagma_nominal(_).
sintagma_verbal(N) --> verbo(N), sintagma_nominal(_), preposiciones, verbo(N).
sintagma_verbal(N) --> verbo(N), sintagma_nominal(_), preposiciones, sintagma_nominal(_).
sintagma_verbal(N) --> verbo(N), sintagma_nominal(_), preposiciones, conjuncion, sintagma_nominal(_), adverbio(_, _), verbo(_).
sintagma_verbal(N) --> adverbio(_, N), verbo(N), sintagma_nominal(_).