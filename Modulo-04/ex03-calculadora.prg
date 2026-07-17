FUNCTION Main()

    LOCAL cValor1
    LOCAL cValor2

    LOCAL nValor1
    LOCAL nValor2

    LOCAL cOperacao

    ACCEPT "Digite o primeiro valor: " TO cValor1
    ACCEPT "Digite o segundo valor: " TO cValor2
    
    nValor1 := VAL(cValor1)
    nValor2 := VAL(cValor2)

    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao

    DO CASE

        CASE cOperacao == "+"
            Qout("Resultado: " + Alltrim(STR(nValor1 + nValor2)))

        CASE cOperacao == "-"
            Qout("Resultado: " + Alltrim(STR(nValor1 - nValor2)))

        CASE cOperacao == "*"
            Qout("Resultado: " + Alltrim(STR(nValor1 * nValor2)))

        CASE cOperacao == "/"

            IF nValor2 == 0
                Qout("Erro: Divisao por zero nao e permitida.")
            ELSE
                Qout("Resultado: " + Alltrim(STR(nValor1 / nValor2)))
            
            ENDIF
        
        CASE cOperacao == "^"
            Qout("Resultado: "+ ALLTrim(Str(nValor1 ^ nValor2)))

        CASE cOperacao == "R"
            QOut("Resultado: " + AllTrim(Str(Sqrt(nValor1))))

        OTHERWISE
            Qout("Operacao invalida. Por favor, use +, -, *, /, ^ ou R.")

    ENDCASE 

RETURN NIL