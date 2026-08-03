#Include "Protheus.ch"

User Function STTIP004()

    Private aRotina := {;
        {"Visualizar", "AxVisual", 0, 2},;
        {"Incluir", "AxInclui", 0, 3},;
        {"Alterar", "AxAltera", 0, 4},;
        {"Excluir", "AxDeleta", 0, 5};
    }


    dbSelectArea("SZ2")
    dbSetOrder(1)


    MBrowse(;
        6,;
        1,;
        22,;
        75,;
        "SZ2";
    )


Return NIL