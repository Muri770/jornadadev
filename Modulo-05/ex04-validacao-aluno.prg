FUNCTION Main()

    LOCAL cNome
    LOCAL cDisciplina

    LOCAL cNota1
    LOCAL cNota2

    LOCAL nNota1
    LOCAL nNota2

    LOCAL nMedia


    ACCEPT "Digite o nome do Aluno: " TO cNome

    WHILE Len(Trim(cNome)) == 0

        QOut("O nome informado é inválido, Digite novamente!")

        ACCEPT "Digite o nome do Aluno novamente: " TO cNome

    ENDDO


    ACCEPT "Digite a Disciplina: " TO cDisciplina

    WHILE Len(cDisciplina) <> 3 .OR. cDisciplina <> Upper(cDisciplina)

        QOut("Utilize 3 Letras (MAIUSCULAS) para informar a Disciplina desejada!")

        ACCEPT "Digite a Disciplina novamente: " TO cDisciplina

    ENDDO


    ACCEPT "Digite a primeira nota: " TO cNota1
    nNota1 := Val(cNota1)

    WHILE nNota1 < 0 .OR. nNota1 > 10

        QOut("A nota digitada é inválida, digite novamente")

        ACCEPT "Digite a primeira nota: " TO cNota1
        nNota1 := Val(cNota1)

    ENDDO


    ACCEPT "Digite a segunda nota: " TO cNota2
    nNota2 := Val(cNota2)

    WHILE nNota2 < 0 .OR. nNota2 > 10

        QOut("A nota digitada é inválida, digite novamente")

        ACCEPT "Digite a segunda nota: " TO cNota2
        nNota2 := Val(cNota2)

    ENDDO

    nMedia := (nNota1 + nNota2) / 2

QOut("==============================")
QOut("        BOLETIM DO ALUNO"      )
QOut("==============================")
QOut("Nome        : " + cNome)
QOut("Disciplina  : " + cDisciplina)
QOut("Nota 1      : " + AllTrim(Str(nNota1)))
QOut("Nota 2      : " + AllTrim(Str(nNota2)))
QOut("Media       : " + AllTrim(Str(nMedia)))
QOut("==============================")
 
RETURN NIL