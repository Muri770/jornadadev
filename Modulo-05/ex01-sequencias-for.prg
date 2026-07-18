FUNCTION Main()

    LOCAL nI

// EXERCÍCIO 1 - LETRA A

    // Inicialização: começa em 1
    // Condição: vai até 100
    // Atualização: NEXT adiciona +1 automaticamente

    FOR nI := 1 TO 100

        QOut("Numero: " + AllTrim(Str(nI)))

    NEXT

// EXERCÍCIO 1 - LETRA B
    QOut("")
    QOut("=== LETRA B ===")

    // Inicialização: começa em -50
    // Condição: vai até 50
    // Atualização: NEXT adiciona +1 automaticamente

    FOR nI := -50 TO 50

        QOut("Numero: " + AllTrim(Str(nI)))

    NEXT

// EXERCÍCIO 1 - LETRA c
    QOut("")
    QOut("=== LETRA C ===")

    // Inicialização: começa em 80
    // Condição: vai até 5
    // Atualização: STEP -1 faz o NEXT diminuir 1 a cada repetição

    FOR nI := 80 TO 5 STEP -1

        QOut("Numero: " + AllTrim(Str(nI)))

    NEXT

RETURN NIL