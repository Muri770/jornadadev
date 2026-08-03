#Include "Protheus.ch"

User Function STTIPLIB()

Return


Static Function NomeCliente(cCodigo, cLoja)

    Local cNome := ""

    If Empty(cCodigo)
        Return ""
    EndIf

    cNome := POSICIONE("SA1", 1, xFilial("SA1") + cCodigo + cLoja, "A1_NOME")

Return AllTrim(cNome)


Static Function ProxCodigoSZ1()

    Local cCodigo := "000001"

Return cCodigo


Static Function ProxSequenSZ2(cContato)

    Local cSequencia := "001"

Return cSequencia


Static Function DescTipoInteracao(cTipo)

    Local cDescricao := ""

    Do Case

        Case cTipo == "E"
            cDescricao := "E-mail"

        Case cTipo == "L"
            cDescricao := "Ligação"

        Case cTipo == "R"
            cDescricao := "Reunião"

        Case cTipo == "V"
            cDescricao := "Visita"

        Case cTipo == "W"
            cDescricao := "WhatsApp"

    EndCase

Return cDescricao