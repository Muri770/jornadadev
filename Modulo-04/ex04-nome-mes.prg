FUNCTION Main()

LOCAL cMes
LOCAL nMes

ACCEPT "Digite o numero do mes (1 a 12): " TO cMes
nMes := VAL(cMes)

DO CASE

    CASE nMes == 1
        Qout("Janeiro")

    CASE nMes == 2
        Qout("Fevereiro")

    CASE nMes == 3
        Qout("Março")

    CASE nMes == 4
        Qout("Abril")

    CASE nMes == 5
        Qout("Maio")

    CASE nMes == 6
        Qout("Junho")

    CASE nMes == 7
        Qout("Julho")

    CASE nMes == 8
        Qout("Agosto")

    CASE nMes == 9
        Qout("Setembro")

    CASE nMes == 10
        Qout("Outubro")

    CASE nMes == 11
        Qout("Novembro")

    CASE nMes == 12
        Qout("Dezembro")
    
    OTHERWISE
        Qout("Numero de mes invalido. Por favor, digite um numero entre 1 e 12.")

ENDCASE

RETURN NIL