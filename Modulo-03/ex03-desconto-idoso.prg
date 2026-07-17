FUNCTION Main()

LOCAL cIdade
LOCAL nIdade
LOCAL cValorCompra
LOCAL nValorCompra
LOCAL nValorFinal

ACCEPT "Digite a idade do cliente: " TO cIdade
ACCEPT "Digite o valor da compra: " TO cValorCompra

nIdade := Val(cIdade)
nValorCompra := Val(cValorCompra)
nValorFinal := nValorCompra

IF nIdade >= 60
   nValorFinal := nValorCompra * 0.875  // Aplica desconto de 12,5%
ELSE
   nValorFinal := nValorCompra

ENDIF

QOut("O valor final da compra e: " + Str(nValorFinal, 10, 2))

RETURN NIL