#include "protheus.ch"

USER FUNCTION STTIP002()

    LOCAL cFiltro := "Month(ZA1_DATANC) == Month(dDataBase) .AND. Year(ZA1_DATANC) == Year(dDataBase)"

    PRIVATE cCadastro := "Cadastro de Pets"
    PRIVATE aRotina := {}
    PRIVATE aIndexZA1 := {}
    PRIVATE lFiltroAtivo := .F.

    PRIVATE aColors := {;
        {"ZA1_DATANC < dDataBase - 3650", "BR_VERMELHO"},;
        {"ZA1_DATANC >= dDataBase - 30", "BR_AMARELO"},;
        {".T.", "BR_VERDE"};
    }

    aAdd( aRotina, { "Pesquisar"      , "AxPesqui"   , 0 , 1 } )
    aAdd( aRotina, { "Visualizar"     , "AxVisual"   , 0 , 2 } )
    aAdd( aRotina, { "Incluir"        , "AxInclui"   , 0 , 3 } )
    aAdd( aRotina, { "Alterar"        , "AxAltera"   , 0 , 4 } )
    aAdd( aRotina, { "Excluir"        , "AxDeleta"   , 0 , 5 } )
    aAdd( aRotina, { "Remover Filtro" , "U_STTIPSEM" , 0 , 6 } )
    aAdd( aRotina, { "Histórico"      , "U_STTIPHIS" , 0 , 6 } )

    dbSelectArea("ZA1")
    dbSetOrder(1)

    FilBrowse("ZA1", @aIndexZA1, @cFiltro, .F.)
    lFiltroAtivo := .T.

    dbGoTop()

    BrwLegenda("ZA1", "Legenda dos Pets", {;
        {"BR_VERMELHO", "Pet idoso"},;
        {"BR_AMARELO", "Pet cadastrado nos últimos 30 dias"},;
        {"BR_VERDE", "Pet normal"};
    })

    mBrowse(1,1,22,75,"ZA1",,,,,,aColors)

    IF lFiltroAtivo
        EndFilBrw("ZA1", @aIndexZA1)
    ENDIF

RETURN NIL


USER FUNCTION STTIPSEM()

    IF !lFiltroAtivo
        MsgInfo("O filtro já foi removido.", "Cadastro de Pets")
        RETURN NIL
    ENDIF

    EndFilBrw("ZA1", @aIndexZA1)
    lFiltroAtivo := .F.

    dbSelectArea("ZA1")
    dbSetOrder(1)
    dbGoTop()

    mBrowse(1,1,22,75,"ZA1",,,,,,aColors)

RETURN NIL


USER FUNCTION STTIPHIS()

    LOCAL cMensagem := ""

    IF ZA1->(Eof())
        MsgAlert("Nenhum pet selecionado.", "Atenção")
        RETURN NIL
    ENDIF

    cMensagem := "Código: " + AllTrim(ZA1->ZA1_COD)
    cMensagem += Chr(13) + Chr(10)
    cMensagem += "Nome: " + AllTrim(ZA1->ZA1_NOME)
    cMensagem += Chr(13) + Chr(10)
    cMensagem += "Raça: " + AllTrim(ZA1->ZA1_RACA)

    MsgInfo(cMensagem, "Histórico do Pet")

RETURN NIL