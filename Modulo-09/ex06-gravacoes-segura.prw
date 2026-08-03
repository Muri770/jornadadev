#Include "Protheus.ch"

User Function EX06GRAVASEG()

    Local lOk := .F.

    BeginTran()

    BEGIN SEQUENCE

        If Empty(M->Z1_CLIENTE)
            Break("Cliente não informado.")
        EndIf


        If Empty(M->Z1_ASSUNTO)
            Break("Assunto não informado.")
        EndIf

        RecLock("SZ1", .T.)

            SZ1->Z1_FILIAL  := xFilial("SZ1")
            SZ1->Z1_CODIGO  := M->Z1_CODIGO
            SZ1->Z1_CLIENTE := M->Z1_CLIENTE
            SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO
            SZ1->Z1_LOJACLI := M->Z1_LOJACLI
            SZ1->Z1_NOME    := M->Z1_NOME
            SZ1->Z1_DATA    := Date()
            SZ1->Z1_HORA    := Time()

        MsUnlock()

        CommitTran()

        lOk := .T.

    RECOVER USING oErro

        RollBackTran()

        MsgStop("Não foi possível salvar o contato." + CRLF + ;
                oErro:Description, "Erro")

        U_GRAVARLOG("EX06GRAVASEG", oErro)

    END SEQUENCE

Return lOk