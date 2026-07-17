FUNCTION Main()

    LOCAL nIdade := 50
    LOCAL lAtivo := .F.

    IF(nIdade > 50 .AND. lAtivo)
       ? "A pessoa eh idosa e esta ativa."
    ENDIF

    IF(nIdade < 18 .OR. !lAtivo)
       ? "A pessoa nao eh idosa e esta ativa."
    ENDIF


RETURN NIL