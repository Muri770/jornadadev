# Autoavaliação — TCC

**Integrante:** Murillo Augusto

## O que foi entregue

| Critério | Peso | Status | Observação |
|---|---|---|---|
| Dicionário (tabelas, índices, SX3) | 20 | Completo | ZZ1 e ZZ2, campos + 3 índices cada |
| Rotinas funcionais (mBrowse/AxCadastro) | 20 | Parcial | STTZZ1 (AxCadastro) e STTZZ2 (mBrowse) funcionando; botão "Ocorrências" e legenda de cor implementados no código, mas não validados na interface (ver Limitações no README) |
| Validações de dados | 15 | Completo | Todas as validações obrigatórias de ZZ1 e ZZ2, testadas |
| Gatilhos automáticos (SX7) | 10 | Completo | Gatilhos de ZZ1 e ZZ2, testados |
| Tratamento de erros (BEGIN SEQUENCE) | 10 | Completo | STTZZ1 com BEGIN SEQUENCE + log técnico |
| Biblioteca de funções comuns (STTZZLIB) | 10 | Completo | 6 funções reutilizáveis |
| Menu no SIGACOM | 5 | Parcial | Estrutura configurada e gerada, mas não navegável nesse ambiente (ver Limitações no README) |
| Documentação (README + evidências) | 10 | Completo | README detalhado com dicionário, gatilhos, validações e limitações |

## Dificuldades encontradas

- O gatilho SX7 e as validações que dependem de mais de um campo (ex.:
  fornecedor + loja) precisaram ser reposicionados para o último campo da
  chave preenchido na tela, pois disparavam antes do segundo campo ser
  informado.
- A função `ExistCpo` não validou corretamente nesse ambiente mesmo com
  dados corretos; foi substituída por uma checagem via `POSICIONE`.
- Não foi possível validar visualmente o menu no SIGACOM, o botão
  "Ocorrências" e a legenda de cores da ZZ2, apesar do código estar
  implementado e compilando sem erros — detalhado no README.

## Evolução ao longo do curso

No início, tive bastante dificuldade em acompanhar o conteúdo, principalmente
durante as aulas ao vivo. Percebi que o entendimento ficava mais claro no dia
seguinte, ao revisar o material e realizar as atividades práticas com calma.
Com o passar dos dias, fui conseguindo acompanhar melhor as aulas em tempo
real, a ponto de conseguir ajudar diversos colegas com dúvidas e problemas
durante as atividades da turma.

## Diferenciais implementados

- Validação extra na ZZ1 (impedir código duplicado na inclusão), além
  das três obrigatórias do enunciado.
- Log técnico de erros em arquivo (`LOGTCC.TXT`) via `STTZZLIB`.