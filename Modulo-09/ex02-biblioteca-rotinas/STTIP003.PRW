#Include "Protheus.ch"

User Function STTIP003()

    Private cCadastro := "Cadastro de Contatos"
    Private aRotina := {}

    Private aColors := {;
        {"U_TEMINTERACAO()", "BR_VERDE"},;
        {".T.", "BR_VERMELHO"};
    }


    aAdd(aRotina, {"Pesquisar",   "AxPesqui",    0, 1})
    aAdd(aRotina, {"Visualizar",  "AxVisual",    0, 2})
    aAdd(aRotina, {"Incluir",     "AxInclui",    0, 3})
    aAdd(aRotina, {"Alterar",     "AxAltera",    0, 4})
    aAdd(aRotina, {"Excluir",     "AxDeleta",    0, 5})
    aAdd(aRotina, {"Interações",  "U_STTIP004",  0, 6})


    dbSelectArea("SZ1")
    dbSetOrder(1)


    BrwLegenda("SZ1", "Legenda dos Contatos", {;
        {"BR_VERDE", "Possui interação"},;
        {"BR_VERMELHO", "Sem interação"};
    })


    mBrowse(1,1,22,75,"SZ1",,,,,,aColors)


Return NIL



User Function TEMINTERACAO()

    Local lRet := .F.


    dbSelectArea("SZ2")
    dbSetOrder(1)


    If dbSeek(xFilial("SZ2") + SZ1->Z1_CODIGO)

        lRet := .T.

    EndIf


Return lRet