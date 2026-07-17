FUNCTION Main()

    LOCAL cSalario
    LOCAL nSalario
    LOCAL nReajuste

    LOCAL nNovoSalario

    ACCEPT "Digite o salário atual: " To cSalario
    nSalario := VAL(cSalario)

IF nSalario < 1000
        
        nReajuste :=15

ELSEIF nSalario <= 2000 

    nReajuste := 12

ELSEIF nSalario <= 4000

    nReajuste := 8

ELSE

    nReajuste := 5

ENDIF

    nNovoSalario := nSalario * (1 + nReajuste / 100)

    Qout("Novo salário: " + Alltrim(STR(nNovoSalario)))

RETURN NIL