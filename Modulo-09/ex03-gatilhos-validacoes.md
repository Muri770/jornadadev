# Exercício 3 - Gatilhos, campos virtuais e validações cruzadas

## Campos virtuais

Foram criados os campos virtuais na tabela SZ2:

- Z2_CODIGO
- Z2_ASSUNT

Utilizando POSICIONE() para buscar informações da tabela SZ1.

## Gatilhos automáticos

Foram configurados:

- Z2_DATA:
  - Regra: dDataBase

- Z2_HORA:
  - Regra: Time()

O usuário e a validação de contato foram testados, porém apresentaram incompatibilidade com a versão MP8 utilizada no ambiente.

## Resultado

Ao incluir uma interação:
- Data é preenchida automaticamente.
- Hora é preenchida automaticamente.
- Campos virtuais retornam informações da SZ1.