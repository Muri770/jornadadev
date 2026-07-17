FUNCTION Main()

LOCAL cIdade
LOCAL cDependentes

LOCAL nIdade
LOCAL nDependentes

LOCAL nValorPlano
LOCAL nValorFinal

ACCEPT "Digite a idade: " TO cIdade
ACCEPT "Digite a quantidade de dependentes: " TO cDependentes

nIdade := VAL(cIdade)

nDependentes := VAL(cDependentes)

    IF nIdade <= 18
        nValorPlano := 100

    ELSEIF nIdade <= 35
        nValorPlano := 150

    ELSEIF nIdade <= 60
        nValorPlano := 200

    ELSE
         nValorPlano := 300

    ENDIF

    nValorFinal := nValorPlano + (nDependentes * 50)

    QOut("Valor final do plano: " + AllTrim(Str(nValorFinal)))


RETURN Nil