FUNCTION Main()
    Local cNome := "Murillo A."  //Declara Váriavel
    Local cCidade := "Santo Andre"  //Declara Váriavel
    Local cCurso := "Harbour/ADPVL" //Declara Váriavel
    Local cData := DToc( Date())  //Declara Váriavel e atribui a data atual
    Local cHora := Time()  //Declara Váriavel e atribui a hora atual

    hb_cdpSelect("PT850")

    QOut("=============================")
    QOut("  FICHA DE APRESENTAÇÃO  ")  
    QOut("=============================")
    QOut("Nome         : " + cNome)   
    QOut("Cidade       : " + cCidade)     
    QOut("Curso        : " + cCurso)
    QOut("Data         : " + cData)
    QOut("Hora         : " + cHora)
    QOut("=============================")
RETURN NIL