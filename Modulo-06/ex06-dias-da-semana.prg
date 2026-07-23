FUNCTION Main()

    LOCAL aDias
    LOCAL cNumero
    LOCAL nNumero

    aDias := {"Domingo", "Segunda-Feira", "Terca-Feira", "Quarta-Feira", ;
              "Quinta-Feira", "Sexta-Feira", "Sabado"}

    ACCEPT "Digite um numero de 1 a 7: " TO cNumero

    nNumero := Val(cNumero)

    IF nNumero >= 1 .AND. nNumero <= 7

        QOut(aDias[nNumero])

    ELSE

        QOut("Numero invalido")

    ENDIF

RETURN NIL