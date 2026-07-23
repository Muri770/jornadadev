FUNCTION CadastrarProduto(aProdutos)

    LOCAL aProduto
    LOCAL cCodigo
    LOCAL cNome
    LOCAL cQuantidade
    LOCAL cPreco

    LOCAL nCodigo
    LOCAL nQuantidade
    LOCAL nPreco

    aProduto := {}

    ACCEPT "Digite o codigo: " TO cCodigo
    nCodigo := Val(cCodigo)

    ACCEPT "Digite o nome: " TO cNome

    ACCEPT "Digite a quantidade: " TO cQuantidade
    nQuantidade := Val(cQuantidade)

    ACCEPT "Digite o preco: " TO cPreco
    nPreco := Val(cPreco)

    AADD(aProduto, nCodigo)
    AADD(aProduto, cNome)
    AADD(aProduto, nQuantidade)
    AADD(aProduto, nPreco)

    AADD(aProdutos, aProduto)

    QOut("Produto cadastrado!")

RETURN NIL


FUNCTION ListarProdutos(aProdutos)

    LOCAL nCont

    QOut("======================")
    QOut("    LISTA PRODUTOS"    )
    QOut("======================")

    FOR nCont := 1 TO Len(aProdutos)

        QOut("Codigo: " + AllTrim(Str(aProdutos[nCont][1])))

        QOut("Nome: " + aProdutos[nCont][2])

        QOut("Quantidade: " + AllTrim(Str(aProdutos[nCont][3])))

        QOut("Preco: " + AllTrim(Str(aProdutos[nCont][4])))

        QOut("----------------------")

    NEXT

RETURN NIL


FUNCTION EntradaEstoque(aProdutos)

    LOCAL nPosicao
    LOCAL cCodigo
    LOCAL cQuantidade
    LOCAL nQuantidade

    ACCEPT "Digite o codigo do produto: " TO cCodigo

    nPosicao := BuscarPosicao(aProdutos, Val(cCodigo))

    IF nPosicao > 0

        ACCEPT "Quantidade entrada: " TO cQuantidade

        nQuantidade := Val(cQuantidade)

        aProdutos[nPosicao][3] := aProdutos[nPosicao][3] + nQuantidade

        QOut("Entrada realizada")

    ELSE

        QOut("Produto nao encontrado")

    ENDIF

RETURN NIL


FUNCTION SaidaEstoque(aProdutos)

    LOCAL cCodigo
    LOCAL cQuantidade
    LOCAL nQuantidade
    LOCAL nPosicao

    ACCEPT "Codigo do produto: " TO cCodigo

    nPosicao := BuscarPosicao(aProdutos, Val(cCodigo))

    IF nPosicao > 0

        ACCEPT "Quantidade retirada: " TO cQuantidade

        nQuantidade := Val(cQuantidade)

        IF aProdutos[nPosicao][3] >= nQuantidade

            aProdutos[nPosicao][3] := aProdutos[nPosicao][3] - nQuantidade

            QOut("Saida realizada")

        ELSE

            QOut("Estoque insuficiente")

        ENDIF

    ELSE

        QOut("Produto nao encontrado")

    ENDIF

RETURN NIL

FUNCTION BuscarProduto(aProdutos)

    LOCAL cCodigo
    LOCAL nPosicao

    ACCEPT "Digite o codigo: " TO cCodigo

    nPosicao := BuscarPosicao(aProdutos, Val(cCodigo))

    IF nPosicao > 0

        QOut("Produto encontrado: " + aProdutos[nPosicao][2])

    ELSE

        QOut("Produto nao encontrado")

    ENDIF

RETURN NIL

FUNCTION BuscarPosicao(aProdutos, nCodigo)

    LOCAL nCont

    FOR nCont := 1 TO Len(aProdutos)

        IF aProdutos[nCont][1] == nCodigo

            RETURN nCont

        ENDIF

    NEXT

RETURN 0

FUNCTION RelatorioEstoque(aProdutos)

    LOCAL nCont
    LOCAL nValor
    LOCAL nTotal

    nTotal := 0

    FOR nCont := 1 TO Len(aProdutos)

        nValor := aProdutos[nCont][3] * aProdutos[nCont][4]


        QOut("Produto: " + aProdutos[nCont][2])

        QOut("Valor estoque: " + AllTrim(Str(nValor)))


        nTotal := nTotal + nValor

    NEXT

    QOut("======================")

    QOut("Total geral: " + AllTrim(Str(nTotal)))

RETURN NIL