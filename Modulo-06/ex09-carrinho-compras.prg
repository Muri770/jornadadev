FUNCTION Main()

    LOCAL aCarrinho
    LOCAL aProduto
    LOCAL cNome
    LOCAL cPreco
    LOCAL nPreco
    LOCAL nTotal
    LOCAL cContinuar
    LOCAL lContinuar
    LOCAL nCont

    aCarrinho := {}

    nTotal := 0

    lContinuar := .T.

    DO WHILE lContinuar == .T.

        ACCEPT "Digite o nome do produto: " TO cNome

        ACCEPT "Digite o preco do produto: " TO cPreco

            nPreco := Val(cPreco)

            aProduto := {}
            
            AADD(aProduto, cNome)

            AADD(aProduto, nPreco)

            AADD(aCarrinho, aProduto)

            nTotal := nTotal + nPreco

        ACCEPT "Deseja adicionar mais produtos? (S/N): " TO cContinuar

            IF Upper(cContinuar) == "N"

                lContinuar := .F.

            ENDIF

        ENDDO

            Qout("===================")
            Qout("     CARRINHO      ")
            Qout("===================")

    FOR nCont := 1 TO Len(aCarrinho)

                Qout("Produto: " + aCarrinho[nCont][1])
                
                Qout("Preco: " + AllTrim(Str(aCarrinho[nCont][2])))
            
    NEXT

    Qout("===================")            
    Qout("Total: " + AllTrim(Str(nTotal)))
    Qout("===================")

RETURN NIL