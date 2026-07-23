FUNCTION Main()

    LOCAL aNumeros
    LOCAL cNumero
    LOCAL nNumero
    LOCAL nCont
    LOCAL nSoma
    LOCAL nMedia

    aNumeros := {}

    nSoma := 0

    FOR nCont := 1 TO 10

        ACCEPT "Digite um numero: " TO cNumero

        nNumero := Val(cNumero)

        AADD(aNumeros, nNumero)

        nSoma := nSoma + nNumero

    NEXT

    ASORT(aNumeros)

    QOut("Numeros ordenados:")

    FOR nCont := 1 TO 10

        QOut(aNumeros[nCont])

    NEXT

    nMedia := nSoma / 10

    QOut("Soma: " + AllTrim(Str(nSoma)))

    QOut("Media: " + AllTrim(Str(nMedia)))

    QOut("Menor numero: " + AllTrim(Str(aNumeros[1])))

    QOut("Maior numero: " + AllTrim(Str(aNumeros[10])))

RETURN NIL