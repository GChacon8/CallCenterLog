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

% Adverbios
adverbio(G, N) --> [P], {es_adverbio(P, G, N)}.
es_adverbio(si, _, _).
es_adverbio(no, _, _).
es_adverbio(tambien, _, _).
es_adverbio(claro, _, _).
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

% Verbos
verbo(N) --> [P], {es_verbo(P, N)}.
es_verbo(funciona, singular).
es_verbo(funcionan, plural).
es_verbo(estoy, singular).
es_verbo(esta, singular).
es_verbo(estan, plural).
es_verbo(estamos, plural).
es_verbo(tengo, singular).
es_verbo(tiene, singular).
es_verbo(tenemos, plural).
es_verbo(tienen, plural).
es_verbo(leo, singular).
es_verbo(lee, singular).
es_verbo(leemos, plural).
es_verbo(leen, plural).

% Sustantivos
sustantivo(G, N) --> [P], {es_sustantivo(P, G, N)}.
es_sustantivo(computador, masculino, singular).
es_sustantivo(computadora, femenino, singular).
es_sustantivo(computadoras, femenino, plural).
es_sustantivo(impresora, femenino, singular).
es_sustantivo(impresoras, femenino, plural).
es_sustantivo(mouse, masculino, singular).
es_sustantivo(teclado, masculino, singular).
es_sustantivo(vpn, femenino, singular).
es_sustantivo(vpns, femenino, plural).
es_sustantivo(profesor, masculino, singular).
es_sustantivo(profesores, masculino, plural).
es_sustantivo(profesora, femenino, singular).
es_sustantivo(profesoras, femenino, plural).
es_sustantivo(libro, masculino, singular).
es_sustantivo(libros, masculino, plural).

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

oracion --> sintagma_nominal(N), sintagma_verbal(N).
oracion --> adverbio(_, _).

sintagma_nominal(N) --> pronombre(_, N).
sintagma_nominal(N) --> sustantivo(_, N).
sintagma_nominal(N) --> pronombre(G, N), sustantivo(G, N).
sintagma_nominal(N) --> determinante(G, N), sustantivo(G, N).

sintagma_verbal(N) --> verbo(N).
sintagma_verbal(N) --> verbo(N), adjetivo(_, N).
sintagma_verbal(N) --> adverbio(_, N), verbo(N).
sintagma_verbal(N) --> adverbio(_, N), verbo(N), adjetivo(_, N).
sintagma_verbal(N) --> verbo(N), sintagma_nominal(_).
sintagma_verbal(N) --> adverbio(_, N), verbo(N), sintagma_nominal(_).
%sintagma_verbal(N) --> adverbio(_, N), verbo(N), adjetivo(_, N), sintagma_nominal(_).