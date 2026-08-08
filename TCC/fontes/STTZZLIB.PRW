#Include "Protheus.ch"

// Retorna o nome do fornecedor a partir do codigo e loja
User Function NomeFornecedor(cFornec, cLoja)
    Local cNome := ""
    cNome := POSICIONE("SA2", 1, xFilial("SA2")+cFornec+cLoja, "A2_NOME")
Return cNome

// Retorna a descricao do produto a partir do codigo
User Function NomeProduto(cCodPro)
    Local cDesc := ""
    cDesc := POSICIONE("SB1", 1, xFilial("SB1")+cCodPro, "B1_DESC")
Return cDesc

// Calcula o percentual de nao conformidade
User Function PercNaoConforme(nOk, nNok)
    Local nPerc := 0
    If (nOk + nNok) > 0
        nPerc := (nNok / (nOk + nNok)) * 100
    EndIf
Return nPerc

// Verifica se o certificado vence em ate 30 dias
User Function CertificadoVencendo(dValCer)
    Local lVencendo := .F.
    If dValCer <= (dDataBase + 30) .AND. dValCer >= dDataBase
        lVencendo := .T.
    EndIf
Return lVencendo

// Grava log tecnico de erro em arquivo texto
User Function LogErroTCC(cFuncao, oErro)
    Local cArqLog := "\LOGTCC.TXT"
    Local nHandle := 0
    Local cLinha := ""
    Local cDescricao := "Erro nao especificado"

    If oErro <> Nil
        cDescricao := oErro:Description
    EndIf

    cLinha := DTOC(Date()) + " " + Time() + " | Funcao: " + cFuncao + " | Erro: " + cDescricao + CHR(13) + CHR(10)

    If File(cArqLog)
        nHandle := FOpen(cArqLog, FO_READWRITE)
        FSeek(nHandle, 0, FS_END)
    Else
        nHandle := FCreate(cArqLog)
    EndIf

    If nHandle > 0
        FWrite(nHandle, cLinha)
        FClose(nHandle)
    EndIf

Return NIL

// Verifica se a ocorrencia atual da ZZ2 esta acima da tolerancia do certificado
User Function CorZZ2NC()
    Local nPerc := 0
    Local nToler := 0

    nPerc := U_PercNaoConforme(ZZ2->ZZ2_QTDOK, ZZ2->ZZ2_QTDNOK)
    nToler := POSICIONE("ZZ1", 1, xFilial("ZZ1")+ZZ2->ZZ2_CONFOR, "ZZ1_TOLERA")

Return (nPerc > nToler)