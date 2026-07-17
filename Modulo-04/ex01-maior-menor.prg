FUNCTION Main()

    LOCAL cValor1
    LOCAL cValor2

    LOCAL nValor1
    LOCAL nValor2

    ACCEPT "Digite o primeiro valor: " TO cValor1
    ACCEPT "Digite o segundo valor: " TO cValor2

    nValor1 := VAL(cValor1)
    nValor2 := VAL(cValor2)

    IF nValor1 == nValor2
        Qout("Os valores são iguais.")

    ELSE 

        IF nValor1 > nValor2
            Qout("O maior valor é: " + Alltrim(STR(nValor1)))
            Qout("O menor valor é: " + Alltrim(STR(nValor2)))

        ELSE
            Qout("O maior valor é: " + Alltrim(STR(nValor2)))
            Qout("O menor valor é: " + Alltrim(STR(nValor1))) 

        ENDIF
    
    ENDIF

RETURN NIL
