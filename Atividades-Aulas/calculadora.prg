FUNCTION Main()
    LOCAL nA, nB
    LOCAL cA, cB

   // Entrada dos valores
   ACCEPT "Digite o primeiro numero: " TO cA
   ACCEPT "Digite o segundo numero: " TO cB

   // Conversão para número
   nA := Val(cA)
   nB := Val(cB)

   QOut("Resultado da soma: " + AllTrim(Str(nA + nB, 10, 2)))
   QOut("Resultado da subtracao: " + AllTrim(Str(nA - nB, 10, 2)))
   QOut("Resultado da multiplicacao: " + AllTrim(Str(nA * nB, 10, 2)))

      // Divisão protegida
   IF nB <> 0
      QOut("Resultado da Divisao....: " + AllTrim(Str(nA / nB, 10, 2)))
   ELSE
      QOut("Nao eh possível dividir por zero!")
   ENDIF

RETURN NIL