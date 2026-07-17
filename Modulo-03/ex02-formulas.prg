// Exercício A

#define PI 3.14159

FUNCTION Main()

    //Variaveis do Exercicio A - Area do Circulo
    LOCAL cRaio
    LOCAL nRaio
    LOCAL nArea

    //Variaveis do Exercicio B - Hipotenusa
    LOCAL cCateto1
    LOCAL cCateto2
    LOCAL nCateto1
    LOCAL nCateto2
    LOCAL nHipotenusa

    //Variaveis do Exercicio C - IMC
    LOCAL cPeso
    LOCAL cAltura
    LOCAL nPeso
    LOCAL nAltura
    LOCAL nIMC

    // Exercicio A - Area do Circulo
    ACCEPT "Digite o raio do circulo: " TO cRaio

    nRaio := Val(cRaio)

    nArea := PI * (nRaio ^ 2)

    Qout("A area do circulo e: " + Str(nArea, 10, 2))



    // Exercicio B - Hipotenusa
    ACCEPT "Digite o cateto 1: " TO cCateto1
    ACCEPT "Digite o cateto 2: " TO cCateto2

    nCateto1 := Val(cCateto1)
    nCateto2 := Val(cCateto2)

    nHipotenusa := Sqrt((nCateto1 ^ 2) + (nCateto2 ^ 2))

    QOut("O valor da hipotenusa e: " + Str(nHipotenusa, 10, 2))

    
    // Exercicio C - IMC
    ACCEPT "Digite o seu peso: " TO cPeso
    ACCEPT "Digite a sua altura: " TO cAltura

    nPeso := Val(cPeso)
    nAltura := Val(cAltura)

    nIMC := nPeso / (nAltura ^ 2)

    QOut("O seu IMC e: " + Str(nIMC, 10, 2))

RETURN NIL