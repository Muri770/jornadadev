FUNCTION Main()

    LOCAL aProdutos
    LOCAL nOpcao
    LOCAL cOpcao

    aProdutos := {}

    nOpcao := 1

    DO WHILE nOpcao <> 0

        QOut("=====================")
        QOut("  CONTROLE ESTOQUE"   )
        QOut("=====================")
        QOut("1 - Cadastrar produto")
        QOut("2 - Listar produtos")
        QOut("3 - Entrada estoque")
        QOut("4 - Saida estoque")
        QOut("5 - Buscar produto")
        QOut("6 - Relatorio estoque")
        QOut("0 - Sair")
        QOut("=====================")

        ACCEPT "Digite a opcao: " TO cOpcao

        nOpcao := Val(cOpcao)

        DO CASE

            CASE nOpcao == 1

                CadastrarProduto(aProdutos)

            CASE nOpcao == 2

                ListarProdutos(aProdutos)

            CASE nOpcao == 3

                EntradaEstoque(aProdutos)

            CASE nOpcao == 4

                SaidaEstoque(aProdutos)

            CASE nOpcao == 5

                BuscarProduto(aProdutos)

            CASE nOpcao == 6

                RelatorioEstoque(aProdutos)

            CASE nOpcao == 0

                QOut("Sistema encerrado")

            OTHERWISE

                QOut("Opcao invalida")

        ENDCASE

    ENDDO

RETURN NIL