#include "protheus.ch"

USER FUNCTION STTIP002()

    LOCAL cFiltro := ""

    PRIVATE cCadastro := "Cadastro de Pets"
    PRIVATE aRotina   := {}

    aAdd( aRotina, { "Pesquisar" , "AxPesqui" , 0 , 1 } )
    aAdd( aRotina, { "Visualizar", "AxVisual" , 0 , 2 } )
    aAdd( aRotina, { "Incluir"   , "AxInclui" , 0 , 3 } )
    aAdd( aRotina, { "Alterar"   , "AxAltera" , 0 , 4 } )
    aAdd( aRotina, { "Excluir"   , "AxDeleta" , 0 , 5 } )

    dbSelectArea("ZA1")
    dbSetOrder(1)

    mBrowse(6,1,22,75,"ZA1")

RETURN NIL