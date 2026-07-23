FUNCTION Main()

    LOCAL aAlunos
    LOCAL cNome
    LOCAL cNota
    LOCAL cQuantidade
    LOCAL nAlunos
    LOCAL nCont
    LOCAL nNota
    LOCAL aAluno
    LOCAL nValorNota
    LOCAL nMedia
    LOCAL nSoma

    ACCEPT "Digite a quantidade de alunos: " TO cQuantidade
    nAlunos := Val(cQuantidade)

    aAlunos := {}

    FOR nCont := 1 TO nAlunos

            ACCEPT "Digite o nome: " TO cNome
        
            aAluno := {}

            AADD(aAluno, cNome)

            FOR nNota := 1 TO 4

                ACCEPT "Digite a nota: " TO cNota
                nValorNota := Val(cNota)

                AADD(aAluno, nValorNota)

            NEXT

            AADD(aAlunos, aAluno)
    
    NEXT


    FOR nCont := 1 TO nAlunos

        nSoma := 0

        FOR nNota := 1 TO 4

            nSoma := nSoma + aAlunos[nCont][nNota + 1]

        NEXT
    
        nMedia := nSoma / 4

        IF nMedia >= 7

            QOut("Aprovado: " + aAlunos[nCont][1])

        ELSE

            QOut("Reprovado: " + aAlunos[nCont][1])

        ENDIF

NEXT

RETURN NIL