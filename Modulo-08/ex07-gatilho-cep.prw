#include "protheus.ch"

User Function STCEP(cCEP, cTipo)

    Local aCEPs := {;
        {"18035000", "Vila Progresso", "Santo André", "SP"},;
        {"01001000", "Se",             "São Paulo",   "SP"};
    }

    Local cRet := ""
    Local nPos := 0

    cCEP  := AllTrim(StrTran(cCEP, "-", ""))
    cTipo := Upper(AllTrim(cTipo))

    nPos := aScan(aCEPs, {|aItem| aItem[1] == cCEP})

    If nPos > 0

        Do Case

            Case cTipo == "BAIRRO"
                cRet := aCEPs[nPos][2]

            Case cTipo == "CIDADE"
                cRet := aCEPs[nPos][3]

            Case cTipo == "UF"
                cRet := aCEPs[nPos][4]

        EndCase

    EndIf

Return cRet


User Function STCEPTESTE()

    Local cCEP := "18035-000"

    MsgInfo( ;
        "Bairro: " + U_STCEP(cCEP,"BAIRRO") + CRLF + ;
        "Cidade: " + U_STCEP(cCEP,"CIDADE") + CRLF + ;
        "UF: " + U_STCEP(cCEP,"UF"), ;
        "Teste CEP" )

Return Nil