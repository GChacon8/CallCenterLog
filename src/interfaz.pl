:-consult(gramatica).

test:- write("Escribe una oracion: "), readln(Oracion), phrase(oracion, Oracion), !, write("Te pude entender\n"), test.
test:- write("No te entendi\n"), !, test.