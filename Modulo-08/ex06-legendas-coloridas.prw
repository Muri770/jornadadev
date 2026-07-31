#include "protheus.ch"

USER FUNCTION STTIP002()

    LOCAL cFiltro := ""

    LOCAL aColors := {;
    		{"ZA1_DATANC < dDataBase - 3650", "BR_VERMELHO"},;
    		{"ZA1_DATANC >= dDataBase - 30", "BR_AMARELO"},;
    		{".T.", "BR_VERDE"};
	}

    PRIVATE cCadastro := "Cadastro de Pets"
    PRIVATE aRotina   := {}

    aAdd( aRotina, { "Pesquisar" , "AxPesqui" , 0 , 1 } )
    aAdd( aRotina, { "Visualizar", "AxVisual" , 0 , 2 } )
    aAdd( aRotina, { "Incluir"   , "AxInclui" , 0 , 3 } )
    aAdd( aRotina, { "Alterar"   , "AxAltera" , 0 , 4 } )
    aAdd( aRotina, { "Excluir"   , "AxDeleta" , 0 , 5 } )

    dbSelectArea("ZA1")
    dbSetOrder(1)

    BrwLegenda("ZA1", "Legenda dos Pets", {;
        {"BR_VERMELHO", "Pet idoso"},;
        {"BR_AMARELO", "Pet cadastrado hoje"},;
        {"BR_VERDE", "Pet normal"};
    })

    
    mBrowse(1, 1, 22, 75, "ZA1", , , , , , aColors)

RETURN NIL