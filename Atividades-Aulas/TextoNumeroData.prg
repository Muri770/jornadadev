FUNCTION Main()
    
    LOCAL nNumero := 50
    LOCAL cTexto := ""
    //LOCAL dData := Date()
    LOCAL dData := Date()

    SET DATE FORMAT "DD/MM/YYYY"

    Qout("Texto: " + cTexto)
    Qout("Numero: " + Alltrim(str(nNumero)))
    Qout("Data: " + DtoC(dData))


RETURN NIL