# Exercício 5 - A1_FILIAL e xFilial()  (obrigatório)

## a) Por que existe o campo A1_FILIAL na tabela SA1?

O campo A1_FILIAL existe para identificar de qual filial aquele registro pertence, no Protheus, uma mesma empresa pode possuir várias filiais, então o sistema precisa saber separar os dados de cada uma delas.

Da mesma forma, a tabela ZA1 que criamos também precisa ter um campo de filial, pois segue o mesmo padrão do Protheus para organizar os registros por empresa e filial.

## b) Qual a relação da função xFilial() com isso?

A função xFilial() é utilizada para retornar automaticamente a filial que está sendo usada no momento,ela evita que o programador precise informar a filial manualmente dentro do código.

Se a filial fosse escrita manualmente no programa, poderia acontecer de o sistema gravar ou buscar informações na filial errada, principalmente em ambientes que possuem várias filiais cadastradas.