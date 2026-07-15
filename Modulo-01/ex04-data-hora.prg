FUNCTION Main()
    Local cNome := "Murillo A."  //Declara Variavel
    Local cCidade := "Santo Andre"  //Declara Variavel
    Local cCurso := "Harbour/ADPVL" //Declara Variavel
    Local cData := DToc( Date())  //Declara Variavel e atribui a data atual
    Local cHora := Time()  //Declara Variavel e atribui a hora atual

    hb_cdpSelect("PT850")

    QOut("=============================")
    QOut("  FICHA DE APRESENTA€ÇO  ")  
    QOut("=============================")
    QOut("Nome         : " + cNome)   
    QOut("Cidade       : " + cCidade)     
    QOut("Curso        : " + cCurso)
    QOut("Data         : " + cData)
    QOut("Hora         : " + cHora)
    QOut("=============================")
RETURN NIL