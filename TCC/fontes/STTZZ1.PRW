#Include "Protheus.ch"

User Function STTZZ1()
    Local oErro := Nil

    BEGIN SEQUENCE
        AxCadastro("ZZ1", "Fornecedores")
    RECOVER USING oErro
        U_LogErroTCC("STTZZ1", oErro)
        MsgAlert("Ocorreu um erro ao processar o cadastro: " + oErro:Description, "Erro no Controle de Fornecimento")
    END SEQUENCE

Return