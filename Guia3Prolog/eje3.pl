inter([],[],[]):-!.

inter([Cab1|Col1],[Cab2|Col2],[Cab1,Cab2|L]):-
    inter(Col1,Col2,L).