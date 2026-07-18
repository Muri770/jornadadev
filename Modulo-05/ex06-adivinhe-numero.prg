FUNCTION Main()

    LOCAL nSecreto
    LOCAL nPalpite
    LOCAL nTentativa
    LOCAL cPalpite

    nSecreto := HB_RandomInt(1,100)

    QOut("==============================")
    QOut("     JOGO - ADIVINHE O NUMERO")
    QOut("==============================")
    QOut("Voce tem 7 tentativas!")
    QOut("")

    FOR nTentativa := 1 TO 7

        ACCEPT "Digite um numero entre 1 e 100: " TO cPalpite

        nPalpite := Val(cPalpite)

        IF nPalpite == nSecreto

            QOut("")
            QOut("==============================")
            QOut(" PARABENS! VOCE ACERTOU!")
            QOut("==============================")
            QOut("Tentativa: " + AllTrim(Str(nTentativa)))
            QOut("Numero secreto: " + AllTrim(Str(nSecreto)))
            QOut("==============================")

            EXIT

        ELSEIF nPalpite < nSecreto

            QOut("O numero secreto é MAIOR!")

        ELSE

            QOut("O numero secreto é MENOR!")

        ENDIF

    NEXT

    IF nPalpite <> nSecreto

        QOut("")
        QOut("==============================")
        QOut(" FIM DE JOGO!")
        QOut("==============================")
        QOut("O numero secreto era: " + AllTrim(Str(nSecreto)))
        QOut("==============================")

    ENDIF

RETURN NIL