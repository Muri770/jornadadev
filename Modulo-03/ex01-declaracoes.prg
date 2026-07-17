FUNCTION Main()

    LOCAL cNomeFuncionario := "Murillo Augusto"
    LOCAL nSalarioBruto := 3500.00
    LOCAL nAtivo := .T.
    LOCAL dAdmissao := Date()
    LOCAL cDepartamento := "TI"

    Qout("Nome: " + cNomeFuncionario)
    Qout("Salario: " + Str(nSalarioBruto, 10, 2))
    Qout("Ativo: " + Iif(nAtivo, "Sim", "Não"))
    Qout("Data de Admissao: " + Dtoc(dAdmissao))
    Qout("Departamento: " + cDepartamento)

RETURN NIL