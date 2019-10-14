evaluar(Operando, Operando):- number(Operando),!. 

evaluar([OperandoIzq, +, OperandoDer], Resultado):- 
    evaluar(OperandoIzq, number(OperandoIzq), number(OperandoDer)),
    is(Resultado, +(OperandoIzq, OperandoDer)).
 
evaluar([OperandoIzq, +, OperandoDer], Resultado):- 
    evaluar(OperandoIzq, OpIzq), evaluar(OperandoDer, OpDer),
    is(Resultado, +(OpIzq, OpDer)). 

evaluar([OperandoIzq, +, OperandoDer], Resultado):- 
    number(OperandoIzq),
    number(OperandoDer),
    evaluar(OperandoIzq),
    evaluar(OperandoDer),
    is(Resultado, +(OperandoIzq, OperandoDer)). 

evaluar([OperandoIzq, -, OperandoDer], Resultado):- 
    evaluar(OperandoIzq), evaluar(OperandoDer),
    is(Resultado, -(OperandoIzq, OperandoDer)).

evaluar([OperandoIzq, *, OperandoDer], Resultado):- 
    evaluar(OperandoIzq), 
    evaluar(OperandoDer),
is(Resultado, *(OperandoIzq, OperandoDer)).

evaluar([OperandoIzq, /, OperandoDer], Resultado):- 
    evaluar(OperandoIzq), 
    evaluar(OperandoDer),
    is(Resultado, /(OperandoIzq, OperandoDer)).