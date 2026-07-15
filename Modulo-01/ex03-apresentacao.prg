FUNCTION Main()
    Local cNome := "Murillo Augusto"  //Declara v riavel
    Local cCidade := "Santo Andre-SP"  //Declara v riavel
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