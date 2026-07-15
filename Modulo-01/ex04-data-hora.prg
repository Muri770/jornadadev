<<<<<<< HEAD
FUNCTION Main()
    Local cNome := "Murillo A."  //Declara VÃ¡riavel
    Local cCidade := "Santo Andre"  //Declara VÃ¡riavel
    Local cCurso := "Harbour/ADPVL" //Declara VÃ¡riavel
    Local cData := DToc( Date())  //Declara VÃ¡riavel e atribui a data atual
    Local cHora := Time()  //Declara VÃ¡riavel e atribui a hora atual

    hb_cdpSelect("PT850")

    QOut("=============================")
    QOut("  FICHA DE APRESENTAÃ‡ÃƒO  ")  
    QOut("=============================")
    QOut("Nome         : " + cNome)   
    QOut("Cidade       : " + cCidade)     
    QOut("Curso        : " + cCurso)
    QOut("Data         : " + cData)
    QOut("Hora         : " + cHora)
    QOut("=============================")
=======
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
>>>>>>> e62676123fe6b660eda2850d6d2543536f54c110
RETURN NIL