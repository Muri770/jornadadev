FUNCTION Main()
    hb_cdpSelect("UTF8")
    Soma(10, 20)
RETURN NIL

FUNCTION Soma(num1, num2)
    LOCAL nResult := num1 + num2
    Qout(str(nResult))
RETURN NIL