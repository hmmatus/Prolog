factorial(0,1).
factorial(1,1).
factorial(N,FN):-
    >=(N,2),
    is(Nant,-(N,1)),
    factorial(Nant,FNant),
    is(FN,*(N,FNant)).

funcCos(X):-
    cosAux(X,0,15,0).

cosAux(X,K,N,Resp):-
    >(K,N),
    writeln(Resp).

cosAux(X,K,N,Resp):-
    =<(K,N),
    is(Num,*(^(-(0,1),K),^(X,*(2,K)))),
    is(AuxDen,*(2,K)),
    factorial(AuxDen,Den),
    is(RespT,/(Num,Den)),
    is(RespAux,+(Resp,RespT)),
    is(Kaux,+(K,1)),
    cosAux(X,Kaux,N,RespAux).