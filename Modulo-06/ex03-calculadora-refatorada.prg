FUNCTION Main()

    LOCAL nNumero1
    LOCAL nNumero2
    LOCAL nResultado
    LOCAL cOpcao

    nNumero1 := LerNumero()
    nNumero2 := LerNumero()

    ACCEPT "Digite a operacao (+, -, *, /): " TO cOpcao

    nResultado := Calcular(nNumero1, nNumero2, cOpcao)

    MostrarResultado(nResultado)

RETURN NIL


FUNCTION LerNumero()

    LOCAL cNumero
    LOCAL nNumero

    ACCEPT "Digite um numero: " TO cNumero

    nNumero := Val(cNumero)

RETURN nNumero


FUNCTION Calcular(nNumero1, nNumero2, cOpcao)

    LOCAL nResultado

    DO CASE

        CASE cOpcao == "+"

            nResultado := nNumero1 + nNumero2

        CASE cOpcao == "-"

            nResultado := nNumero1 - nNumero2

        CASE cOpcao == "*"

            nResultado := nNumero1 * nNumero2

        CASE cOpcao == "/"

            IF nNumero2 == 0

                RETURN .F.

            ELSE

                nResultado := nNumero1 / nNumero2

            ENDIF

    ENDCASE

RETURN nResultado

FUNCTION MostrarResultado(nResultado)


    QOut(nResultado)


RETURN NIL
