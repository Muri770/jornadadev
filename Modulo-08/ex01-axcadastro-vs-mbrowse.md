# Exercício 1 — AxCadastro × mBrowse 🧠 (OBRIGATÓRIO)

Responda com suas palavras:

## a. Quando você usaria AxCadastro e quando usaria mBrowse ? Dê um exemplo de cada.

R: O AxCadastro seria usado quando fosse necessário criar um cadastro de forma rápida, já que ele monta a tela automaticamente usando as informações do dicionário de dados.

    Exemplo: criar um cadastro simples de Pets utilizando a tabela ZA1.

Já o mBrowse eu usaria quando precisasse de uma tela mais personalizada, com filtros, cores, botões ou outras funcionalidades.

    Exemplo: um cadastro de Pets onde seja possível destacar alguns registros por cores e aplicar filtros.

## b. Cite três coisas que o mBrowse faz e o AxCadastro não faz.

Resposta: 
1. Criar filtros personalizados para mostrar apenas alguns registros.
2. Exibir linhas com cores diferentes usando legendas.
3. Adicionar botões personalizados para executar outras ações na rotina.

## c. Na configuração de legendas ( aColors ), por que a regra ".T." deve ficar por último?

R: A regra ".T." deve ficar por último porque ela sempre será verdadeira. O Protheus verifica as regras de cima para baixo e, quando encontra uma condição verdadeira, já aplica aquela cor.

Se ela ficar primeiro, as outras regras nunca serão verificadas. Ela funciona como um ELSE, sendo usada quando nenhuma das condições anteriores é atendida.

## d. Qual a diferença entre um campo Virtual (X3_RELACAO) e um gatilho (SX7) para preencher o nome do cliente?

R: O campo Virtual apenas busca e exibe uma informação de outra tabela, sem gravar esse valor.

Já o gatilho executa uma ação automaticamente quando um campo é preenchido, podendo preencher outros campos durante o cadastro.