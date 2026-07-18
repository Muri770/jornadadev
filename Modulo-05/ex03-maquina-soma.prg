FUNCTION Main()

    LOCAL cValor
    LOCAL nValor

    LOCAL nTotal := 0
    LOCAL nQtd := 0

    ACCEPT "Digite um valor (DIGITE 0 PARA ENCERRAR): " TO cValor
    nValor := Val(cValor)

    WHILE nValor <> 0
        nTotal += nValor
        nQtd++

    ACCEPT "Digite outro valor: " TO cValor
    nValor := Val(cValor)

    ENDDO
    
    QOut("Soma total: " + AllTrim(Str(nTotal)))
    QOut("Quantidade de valores: " + AllTrim(Str(nQtd)))

RETURN NIL