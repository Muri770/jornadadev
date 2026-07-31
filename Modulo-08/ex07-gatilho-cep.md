# Exercício 7 — Gatilho de CEP

## a) Qual a diferença entre campo, contra-domínio e regra num gatilho?

R: O campo é o que dispara o gatilho. Neste caso, o A1_CEP.

O contra-domínio é o campo que recebe o valor preenchido, como A1_BAIRRO, A1_MUN e A1_EST.

A regra é o comando que será executado para preencher o campo, por exemplo:
`U_STCEP(M->A1_CEP,"BAIRRO")`.


## b) Por que usa M->A1_CEP e não SA1->A1_CEP?

R: Porque o valor ainda está sendo digitado na tela e ainda não foi gravado na tabela SA1.

O M representa o valor que está na memória naquele momento.


## c) Dois problemas de deixar CEPs no fonte e como resolver?

R: Um problema é a manutenção, pois qualquer alteração exige mudar o código.

Outro problema é a quantidade de dados, pois o fonte não é o lugar correto para armazenar muitos CEPs.

Uma solução seria usar uma tabela de CEP no Protheus ou buscar os dados através de uma API.


## d) Como preencher também o A1_COD_MUN?

R: Criaria uma nova regra/gatilho para buscar o código do município junto com as outras informações do CEP e preencher o campo automaticamente.