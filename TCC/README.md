# TCC — Sistema de Controle de Não Conformidades de Fornecedores (ISO 9001)

Projeto final do curso Harbour/ADVPL — Do Zero ao Protheus.

**Integrante:** Murillo Augusto

## Descrição do Sistema

Sistema desenvolvido no módulo de Compras (SIGACOM) do Protheus para monitorar
certificados de qualidade dos fornecedores e registrar ocorrências de não
conformidade na entrada de materiais, atendendo aos requisitos de
certificação ISO 9001 da Indústria XYZ.

O sistema é composto por duas tabelas principais:
- **ZZ1 — Controle de Fornecimento**: cadastro dos certificados de qualidade
  vinculados a cada fornecedor.
- **ZZ2 — Ocorrências do Fornecedor**: registro das entregas, com
  quantidades conformes e não conformes por produto.

## Estrutura de Arquivos

```
TCC/
├── README.md
├── AUTOAVALIACAO.md
├── Dados-e-Dicionario/
│ ├── sx2990.csv ← Dicionário de tabelas
│ ├── sx3990.csv ← Dicionário de campos
│ ├── six990.csv ← Dicionário de índices
│ ├── sx7990.csv ← Dicionário de gatilhos
│ ├── sxb990.csv ← Consultas padrão (F3)
│ ├── zz1990.csv ← Dados da tabela ZZ1
│ └── zz2990.csv ← Dados da tabela ZZ2
├── fontes/
│ ├── STTZZ1.PRW ← Rotina de manutenção da ZZ1
│ ├── STTZZ2.PRW ← Rotina de manutenção da ZZ2 (inclui STTZZ2FLT)
│ └── STTZZLIB.PRW ← Biblioteca de funções comuns
└── evidencias/ ← Prints das telas funcionando
```

> Observação: os arquivos `.DBF` binários do ambiente de aula não puderam ser
> exportados junto (as tabelas de dicionário do sistema não foram localizadas
> com os nomes padrão `sx2990`/`sx3990`/etc. nesse ambiente específico, e as
> tabelas `ZZ1`/`ZZ2` foram criadas sem o sufixo `990` no nome físico). Os
> `.csv` acima foram elaborados a partir da estrutura real testada e
> documentada nas seções seguintes deste README, e representam fielmente o
> dicionário, os gatilhos e os dados de teste utilizados.

## Dicionário de Dados

### Tabela ZZ1 — Controle de Fornecimento

| Campo | Título | Tipo | Tam | Dec | Contexto |
|---|---|---|---|---|---|
| ZZ1_FILIAL | Filial | C | 2 | 0 | Real |
| ZZ1_CODIGO | Código | C | 6 | 0 | Real |
| ZZ1_FORNEC | Cód. Fornecedor | C | 6 | 0 | Real |
| ZZ1_LOJAFO | Loja Fornecedor | C | 2 | 0 | Real |
| ZZ1_NOMEFO | Nome Fornecedor | C | 40 | 0 | Virtual |
| ZZ1_CERTIF | Dados Certificado | C | 256 | 0 | Real |
| ZZ1_VALCER | Val. Certificado | D | 8 | 0 | Real |
| ZZ1_TOLERA | Tolerância (%) | N | 5 | 2 | Real |
| ZZ1_TOTOK | Qtd. Conforme | N | 12 | 2 | Real |
| ZZ1_TOTNOK | Qtd. Não Conforme | N | 12 | 2 | Real |

**Índices:**

| Ordem | Expressão | Descrição |
|---|---|---|
| 1 | ZZ1_FILIAL + ZZ1_CODIGO | Chave primária |
| 2 | ZZ1_FILIAL + ZZ1_FORNEC + ZZ1_LOJAFO | Por fornecedor |
| 3 | ZZ1_FILIAL + DTOS(ZZ1_VALCER) | Por validade do certificado |

### Tabela ZZ2 — Ocorrências do Fornecedor

| Campo | Título | Tipo | Tam | Dec | Contexto |
|---|---|---|---|---|---|
| ZZ2_FILIAL | Filial | C | 2 | 0 | Real |
| ZZ2_CONFOR | Controle (→ZZ1) | C | 6 | 0 | Real |
| ZZ2_FORNEC | Cód. Fornecedor | C | 6 | 0 | Real |
| ZZ2_LOJAFO | Loja Fornecedor | C | 2 | 0 | Real |
| ZZ2_NOMEFO | Nome Fornecedor | C | 40 | 0 | Virtual |
| ZZ2_DATA | Data Ocorrência | D | 8 | 0 | Real |
| ZZ2_HORA | Hora | C | 5 | 0 | Real |
| ZZ2_CODPRO | Produto | C | 15 | 0 | Real |
| ZZ2_QTDOK | Qtde. Conforme | N | 12 | 0 | Real |
| ZZ2_QTDNOK | Qtde. Não Conforme | N | 12 | 0 | Real |
| ZZ2_VLRUNI | Valor Unitário | N | 12 | 2 | Real |
| ZZ2_TOTOK | R$ Conforme | N | 12 | 2 | Virtual |
| ZZ2_TOTNOK | R$ Não Conforme | N | 12 | 2 | Virtual |

**Índices:**

| Ordem | Expressão | Descrição |
|---|---|---|
| 1 | ZZ2_FILIAL + ZZ2_CONFOR + DTOS(ZZ2_DATA) + ZZ2_HORA | Chave primária |
| 2 | ZZ2_FILIAL + ZZ2_FORNEC + ZZ2_LOJAFO + DTOS(ZZ2_DATA) | Por fornecedor e data |
| 3 | ZZ2_FILIAL + DTOS(ZZ2_DATA) | Por data |

## Gatilhos (SX7)

### ZZ1

| Campo Origem | Campo Destino | Regra |
|---|---|---|
| ZZ1_LOJAFO | ZZ1_NOMEFO | `POSICIONE("SA2",1,xFilial("SA2")+M->ZZ1_FORNEC+M->ZZ1_LOJAFO,"A2_NOME")` |

> Observação: o gatilho foi posicionado no campo `ZZ1_LOJAFO` (segundo campo
> da chave composta), e não em `ZZ1_FORNEC`, porque a chave depende dos dois
> campos e o `ZZ1_LOJAFO` é preenchido por último na tela de inclusão.

### ZZ2

| Campo Origem | Campo Destino | Regra |
|---|---|---|
| ZZ2_CONFOR | ZZ2_FORNEC | `POSICIONE("ZZ1",1,xFilial("ZZ1")+M->ZZ2_CONFOR,"ZZ1_FORNEC")` |
| ZZ2_CONFOR | ZZ2_LOJAFO | `POSICIONE("ZZ1",1,xFilial("ZZ1")+M->ZZ2_CONFOR,"ZZ1_LOJAFO")` |
| ZZ2_CONFOR | ZZ2_NOMEFO | `POSICIONE("SA2",1,xFilial("SA2")+M->ZZ2_FORNEC+M->ZZ2_LOJAFO,"A2_NOME")` |
| ZZ2_DATA | ZZ2_DATA | `IF(INCLUI, dDataBase, ZZ2->ZZ2_DATA)` |
| ZZ2_HORA | ZZ2_HORA | `IF(INCLUI, Time(), ZZ2->ZZ2_HORA)` |

## Validações de Dados

### ZZ1

| Campo | Validação |
|---|---|
| ZZ1_LOJAFO | `!Empty(POSICIONE("SA2",1,xFilial("SA2")+M->ZZ1_FORNEC+M->ZZ1_LOJAFO,"A2_COD"))` — fornecedor deve existir na SA2 |
| ZZ1_VALCER | `M->ZZ1_VALCER >= dDataBase` — validade não pode ser passada |
| ZZ1_TOLERA | `M->ZZ1_TOLERA >= 0 .AND. M->ZZ1_TOLERA <= 100` — tolerância entre 0 e 100 |
| ZZ1_CODIGO | `!(INCLUI .AND. !Empty(POSICIONE("ZZ1",1,xFilial("ZZ1")+M->ZZ1_CODIGO,"ZZ1_CODIGO")))` — impede código duplicado na inclusão |

### ZZ2

| Campo | Validação |
|---|---|
| ZZ2_CONFOR | `!Empty(POSICIONE("ZZ1",1,xFilial("ZZ1")+M->ZZ2_CONFOR,"ZZ1_CODIGO"))` — controle deve existir na ZZ1 |
| ZZ2_CODPRO | `!Empty(POSICIONE("SB1",1,xFilial("SB1")+M->ZZ2_CODPRO,"B1_COD"))` — produto deve existir na SB1 |
| ZZ2_DATA | `M->ZZ2_DATA <= dDataBase` — data não pode ser futura |

## Rotinas

- **STTZZ1.PRW**: manutenção da ZZ1 via `AxCadastro`, protegida por
  `BEGIN SEQUENCE`/`RECOVER`, com log técnico via `U_LogErroTCC` e mensagem
  amigável ao usuário em caso de erro.
- **STTZZ2.PRW**: manutenção da ZZ2 via `mBrowse`. Inclui a função
  `STTZZ2FLT`, que filtra as ocorrências por um código de controle da ZZ1
  específico.
- **STTZZLIB.PRW**: biblioteca com funções reutilizadas pelas rotinas —
  `NomeFornecedor`, `NomeProduto`, `PercNaoConforme`, `CertificadoVencendo`,
  `CorZZ2NC` e `LogErroTCC`.

## Tratamento de Erros

Todas as operações de gravação da ZZ1 são protegidas por `BEGIN SEQUENCE` /
`RECOVER USING oErro`, que grava um log técnico em arquivo (`LOGTCC.TXT`,
via `U_LogErroTCC`) e exibe uma mensagem amigável ao usuário, evitando que
erros técnicos internos sejam exibidos diretamente.

## Consultas Padrão (SXB)

Foram criadas 3 consultas padrão: `ZZ1` (busca por controle), `SA2C`
(busca de fornecedor) e `SB1C` (busca de produto), retornando os campos
especificados no enunciado.

## Menu (SIGACOM)

Foi configurada a estrutura de menu:

```
Compras
└── Atualizações
└── Cadastros
└── Controle ISO 9001
├── Controle de Fornecimento → STTZZ1
└── Ocorrências de Fornecedores → STTZZ2
```
O arquivo `sigacom.xnu` foi gerado com essa estrutura.

## Limitações Conhecidas

- **Menu**: apesar de configurado e gerado corretamente (módulo Compras,
  permissões liberadas, AppServer reiniciado), a navegação pelo menu
  apresenta o erro "opção não disponível" nesse ambiente de aula
  específico. As rotinas foram testadas e validadas via execução direta
  das funções (`U_STTZZ1()` / `U_STTZZ2()`).
- **Botão "Ocorrências" na STTZZ1**: o código da integração entre ZZ1 e
  ZZ2 (função `STTZZ2FLT`) está implementado e compilando corretamente,
  mas não foi possível validar um botão customizado via `mBrowse` nessa
  versão do ambiente (erro de sintaxe em tempo de execução). A `STTZZ1`
  foi mantida na versão estável com `AxCadastro`, sem o botão.
- **Legenda de cores da ZZ2** (diferencial): implementada no código
  (`U_CorZZ2NC`), compila sem erros, mas não foi possível validar
  visualmente pela mesma limitação de teste de `mBrowse` no ambiente.

## Instruções de Instalação

1. Copiar os arquivos da pasta `fontes/` (`STTZZ1.PRW`, `STTZZ2.PRW` e
   `STTZZLIB.PRW`) para o diretório de fontes do ambiente Protheus.
2. Compilar os três arquivos no Dev Studio (MP8IDE).
3. Recriar a estrutura de dicionário da ZZ1 e ZZ2 (campos, índices,
   gatilhos e validações) conforme descrito acima, usando o Configurador
   (SIGACFG → Dicionário de Dados / Gatilhos) — ou importar a estrutura a
   partir dos CSVs em `Dados-e-Dicionario/`.
4. Criar as 3 consultas padrão (SXB) descritas acima.
5. Reiniciar o AppServer após qualquer alteração de dicionário.
6. Executar `U_STTZZ1()` para o cadastro de certificados e `U_STTZZ2()`
   para as ocorrências.