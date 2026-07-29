# Exercício 2 — A tabela ZA1 (Pets) que criamos em aula  (obrigatório)

    Em aula, criamos do zero a tabela customizada ZA1 , para cadastro de Pets. Descreva por
    escrito a estrutura dessa tabela, com base no que foi feito:

## a. Liste os campos da ZA1 (nome do campo, tipo, tamanho) — incluindo o campo de filial, que é obrigatório em toda tabela do Protheus.

R:

| Campo       | Tipo      | Tamanho |
|-------------|-----------|---------|
| ZA1_FILIAL  | Caracter  | 2       |
| ZA1_NOME    | Caracter  | 50      |
| ZA1_RACA    | Caracter  | 50      |
| ZA1_DATANC  | Data      | 8       |

## b. Que índice faria sentido para a ZA1? Justifique (lembre da analogia da lista telefônica).

R:  Um índice pelo campo ZA1_NOME faria sentido, pois normalmente a pesquisa de um pet seria feita pelo seu nome. Assim como uma lista telefônica organiza as pessoas em ordem alfabética para facilitar a busca.

## c. Explique por que o prefixo da tabela é Z (o que esse prefixo significa em termos de convenção do Protheus).

R: No Protheus, tabelas personalizadas ou tabelas Criadas pelo cliente começam com a letra "Z", para evitar conflitos com as tabelas padrão do sistema Protheus. Dessa forma, é garantida a organização e a integridade do dicionário de dados.

## d. Explique por que os campos começam com ZA1_ (ex: ZA1_NOME , ZA1_RACA ) e não apenas com o nome do campo solto.

R: Os campos começam com ZA1_ para identificar que pertencem à tabela ZA1. Isso é uma convenção do Protheus que evita conflitos com campos de outras tabelas que possam ter o mesmo nome, além de facilitar a organização e a manutenção do dicionário de dados.