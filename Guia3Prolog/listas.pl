%Ejemplos de uso de listas
%Desplegar los elementos de una lista

desplegar_lista([Cab|Col]):-
    write(Cab),
    write(' '),
    desplegar_lista(Col),
    !.

desplegar_lista([]):-!.

%Dados los limites a y b de un intervalo, retornar una lista

%generar(A,B,C):-
   % generar_lista(A,B,C,D).

generar_lista(B,B,[B]):-
    !.

generar_lista(A,B,C):-
    is(A1,+(A,1)),
    generar_lista(A1,B,C2),
    =(C,[A|C2]),
    !.

%Llenar al reves la lista
generar_lista2(B,B,L,[B|L]):-
    !.

generar_lista2(A,B,L,Lf):-
    is(A1,+(A,1)),
    %=(Laux,[A|L]),
    generar_lista2(A1,B,[A|L],Lf).
%is_list
%atomic
% Desplegar todos los elementos de una lista. Si uno de los elementos es
% una sublista, desplegar cada elemento de forma individual

printl([]):-!.

printl([H|C]):-

    is_list(H),
    printl(H),
    printl(C),!.

printl([H|C]):-
    atomic(H),
    write(H),
    write(' '),
    printl(C),!.

%ejercicio9 agregar la funcionalidad de que los ponga en orden
llenar_lista(L,Lf):-
    write('Ingresar otro valor(s/n)'),
    read(SiNo),
    agregar(SiNo,L,Lf).

agregar(n,La,La):-
    !.

agregar(s,L,Lf):-
    write('Digite el elemento'),
    read(Elemento),
    =(La,[Elemento|L]),
    llenar_lista(La,Lf).

eliminar_recurrencia([],_,[]):-!.

eliminar_recurrencia([H|C],E,Lf):-
    \==(H,E),
    eliminar_recurrencia(C,E,Lf2),
    =(Lf,[H|Lf2]),!.

eliminar_recurrencia([E|C],E,Lf):-
    %==(H,E),
    eliminar_recurrencia(C,E,Lf),!.
