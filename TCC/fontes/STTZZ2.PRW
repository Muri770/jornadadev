#Include "Protheus.ch"

User Function STTZZ2()
    Local aLegenda := {}

    aAdd(aLegenda, {"U_CorZZ2NC()", "BR_VERMELHO", "Acima da tolerância"})
    aAdd(aLegenda, {".T.", "BR_VERDE", "Dentro da tolerância"})

    mBrowse(1, 1, 999, 999, , "ZZ2", , , , , , , , , , , aLegenda)

Return

User Function STTZZ2FLT(cCodigoZZ1)
    Local cFiltra := ""

    If ValType(cCodigoZZ1) != "C" .OR. Empty(cCodigoZZ1)
        cCodigoZZ1 := ZZ1->ZZ1_CODIGO
    EndIf

    cFiltra := "ZZ2_CONFOR == '" + cCodigoZZ1 + "'"

    dbSelectArea("ZZ2")
    SetFilter(cFiltra)

    mBrowse(1, 1, 22, 75, "ZZ2")

    ClearFilter()

Return