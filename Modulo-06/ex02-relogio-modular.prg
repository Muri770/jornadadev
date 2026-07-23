FUNCTION Main()

    LOCAL cHora
    LOCAL nCont

    FOR nCont := 1 TO 30

        cHora := ObterHora()

        cHora := FormatarHora(cHora)

        ExibirHora(cHora)

        Inkey(1)

    NEXT

RETURN NIL


FUNCTION ObterHora()

RETURN Time()


FUNCTION FormatarHora(cHora)

    LOCAL cHoraFormatada

    cHoraFormatada := cHora

RETURN cHoraFormatada


FUNCTION ExibirHora(cHora)

    QOut("Hora atual: " + cHora)

RETURN NIL