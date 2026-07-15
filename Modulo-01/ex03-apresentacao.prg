FUNCTION Main()
    Local cNome := "Murillo Augusto"  //Declara variavel
    Local cCidade := "Santo Andre-SP"  //Declara variavel
    Local cCurso := "Harbour/ADPVL"

    hb_cdpSelect("PT850")

    QOut("==============================")
    QOut("  FICHA DE APRESENTA€ÇO  ")  
    QOut("==============================")
    QOut("Nome         : " + cNome)   
    QOut("Cidade       : " + cCidade)     
    QOut("Curso        : " + cCurso)
    QOut("==============================")
RETURN NIL