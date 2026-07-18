FUNCTION Main()

    LOCAL cValor
    LOCAL nValor

    ACCEPT "Digite um valor INTEIRO " TO cValor
    nValor := Val(cValor)

    WHILE nValor > 0
        QOut("Dobro: " + AllTrim(Str(nValor * 2)))

        ACCEPT "Digite outro valor: " TO cValor
    nValor := Val(cValor)

    ENDDO

    QOut("Programa encerrado: o valor informado foi menor ou igual a zero.")

RETURN NIL