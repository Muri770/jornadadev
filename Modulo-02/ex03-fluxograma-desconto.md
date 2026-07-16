# Exercício 3 - Fluxograma
## Desconto de 10% em compras acima de R$100

```mermaid
flowchart TD

A([INÍCIO]) --> B[/Ler valor da compra/]

B --> C{Valor da compra é maior que R$100?}

C -->|Sim| D[Aplicar desconto de 10%]

C -->|Não| E[Manter valor da compra]

D --> F[Calcular valor final]

E --> G[Valor final permanece igual]

F --> H[/Mostrar valor final/]

G --> H

H --> I([FIM])
```

## Legenda dos símbolos utilizados:

- **Oval** → Início / Fim
- **Paralelogramo** → Entrada / Saída (Ler / Mostrar)
- **Retângulo** → Processo / Cálculo
- **Losango** → Decisão (Sim / Não)