FUNCTION Main()

   LOCAL cNota1
   LOCAL cNota2

   LOCAL nNota1
   LOCAL nNota2

   LOCAL nPeso1
   LOCAL nPeso2

   LOCAL nMedia

   ACCEPT "Digite a primeira nota: " TO cNota1
   ACCEPT "Digite a segunda nota: " TO cNota2

   nNota1 := Val(cNota1)
   nNota2 := Val(cNota2)

   nPeso1 := 2
   nPeso2 := 3

   nMedia := ((nNota1 * nPeso1) + (nNota2 * nPeso2)) / (nPeso1 + nPeso2)

   QOut("Media final: " + AllTrim(Str(nMedia,10,2)))

RETURN NIL