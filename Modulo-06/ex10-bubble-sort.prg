FUNCTION Main()

    LOCAL aVetor
    LOCAL nCont1
    LOCAL cNumero
    LOCAL nNumero

    aVetor := {}

    FOR nCont1 := 1 TO 10

        ACCEPT "Digite um numero: " TO cNumero

        nNumero := Val(cNumero)

        AADD(aVetor, nNumero)

    NEXT

    aVetor := BubbleSort(aVetor)

    QOut("===================")
    QOut("  VETOR ORDENADO   ")
    QOut("===================")

    FOR nCont1 := 1 TO Len(aVetor)

        QOut(aVetor[nCont1])

    NEXT

RETURN NIL

FUNCTION BubbleSort(aVetor)

    LOCAL nCont1
    LOCAL nCont2
    LOCAL nTemp

    FOR nCont1 := 1 TO Len(aVetor)

        FOR nCont2 := 1 TO Len(aVetor) - 1

            IF aVetor[nCont2] > aVetor[nCont2 + 1]

                nTemp := aVetor[nCont2]

                aVetor[nCont2] := aVetor[nCont2 + 1]

                aVetor[nCont2 + 1] := nTemp

            ENDIF

        NEXT

    NEXT

RETURN aVetor