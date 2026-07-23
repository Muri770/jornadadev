SET PROCEDURE TO matematica.prg

FUNCTION Main()

    LOCAL nResultado

    nResultado := FatorialN(5)

    QOut(nResultado)

    nResultado := EhPrimo(11)

    QOut(nResultado)

    nResultado := MMC(20, 15)

    QOut(nResultado)

    nResultado := MDC(28, 12)

    QOut(nResultado)

RETURN NIL