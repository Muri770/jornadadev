FUNCTION Main()

    LOCAL cJogadaUsuario
    LOCAL cJogadaCPU
    LOCAL cResultado
    LOCAL cOpcao
    LOCAL lContinuar

    lContinuar := .T.

    DO WHILE lContinuar == .T.

        ACCEPT "Digite sua jogada (P/Pedra, A/Papel, T/Tesoura): " TO cJogadaUsuario

        cJogadaUsuario := Upper(cJogadaUsuario)

        IF ValidarJogada(cJogadaUsuario) == .F.

            QOut("Jogada invalida!")

            LOOP

        ENDIF

        cJogadaCPU := SortearJogadaCPU()

        cResultado := DefinirVencedor(cJogadaUsuario, cJogadaCPU)

        QOut("Jogador: " + cJogadaUsuario)

        QOut("CPU: " + cJogadaCPU)

        QOut(cResultado)

        ACCEPT "Deseja continuar? (S/N): " TO cOpcao

        IF Upper(cOpcao) == "N"

            lContinuar := .F.

        ENDIF

    ENDDO

RETURN NIL


FUNCTION ValidarJogada(cJogada)

    LOCAL lValida

    lValida := .F.

    DO CASE

        CASE cJogada == "P"

            lValida := .T.

        CASE cJogada == "A"

            lValida := .T.

        CASE cJogada == "T"

            lValida := .T.

    ENDCASE

RETURN lValida


FUNCTION SortearJogadaCPU()

    LOCAL nSorteio
    LOCAL cJogadaCPU

    nSorteio := HB_RandomInt(1,3)

    DO CASE

        CASE nSorteio == 1

            cJogadaCPU := "P"

        CASE nSorteio == 2

            cJogadaCPU := "A"

        CASE nSorteio == 3

            cJogadaCPU := "T"

    ENDCASE

RETURN cJogadaCPU


FUNCTION DefinirVencedor(cJogada1, cJogada2)

    LOCAL cResultado


    IF cJogada1 == cJogada2

        cResultado := "Empate"

    ELSEIF cJogada1 == "P" .AND. cJogada2 == "T"

        cResultado := "Jogador venceu"

    ELSEIF cJogada1 == "A" .AND. cJogada2 == "P"

        cResultado := "Jogador venceu"

    ELSEIF cJogada1 == "T" .AND. cJogada2 == "A"

        cResultado := "Jogador venceu"

    ELSE

        cResultado := "CPU venceu"

    ENDIF

RETURN cResultado