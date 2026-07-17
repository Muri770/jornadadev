FUNCTION Main()
   LOCAL cNome
   LOCAL nIdade
   LOCAL nValor

   // ACCEPT lê uma string
   ACCEPT "Digite seu nome: " TO cNome

 //    // INPUT lê um valor (número, string, data, lógico)
      INPUT "Digite sua idade: " TO nIdade

   INPUT "Digite um valor: " TO nValor1
   INPUT "Digite outro valor: " TO nValor2

    Qout("total da soma: " + Alltrim(Str(nValor1 + nValor2)))

   QOut("Olá, " + cNome + "!")
   QOut("Você tem " + Alltrim(Str(nIdade)) + " anos.")


RETURN NIL

