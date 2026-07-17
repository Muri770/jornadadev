#define _TESTE03 "Teste03"


FUNCTION MAIN()

/*
LOCAL
PRIVATE
PUBLIC
STATIC
*/

    Qout("_TESTE03")

    PUBLIC nNumero := 50
    Operacoes()
    Soma()

RETURN NIL

FUNCTION Operacoes()
    nNumero := 66
    //PRIVATE nNumero := 10

    Soma()
    Subtrai()


RETURN NIL


FUNCTION Soma()
   // LOCAL nNumero := 20
    Qout(nNumero)
    Qout("Funcao Soma")
RETURN NIL

FUNCTION Subtrai()
    //LOCAL nNumero := 30
    Qout(nNumero)
    Qout("Funcao Subtrai")
RETURN NIL