FUNCTION Main()
    Local cNome := "Murillo A."  //Declara V riavel
    Local cCidade := "Santo Andre"  //Declara V riavel
    Local cCurso := "Harbour/ADPVL" //Declara V riavel
    Local cData := DToc( Date())  //Declara V riavel e atribui a data atual
    Local cHora := Time()  //Declara V riavel e atribui a hora atual

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