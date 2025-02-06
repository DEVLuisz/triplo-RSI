# 📈 Triplo RSI - Estratégia de Trading

Este repositório contém um script em Pascal para backtesting da estratégia **Triplo RSI**, que utiliza três periódos do **Índice de Força Relativa (RSI)** para identificar oportunidades de compra e venda no mercado financeiro.

## 🛠 Como funciona?
A estratégia baseia-se na análise de três RSI com diferentes periódos:
- **RSI Curto** (7 periódos)
- **RSI Médio** (14 periódos)
- **RSI Longo** (21 periódos)

Os gatilhos de entrada e saída funcionam da seguinte forma:
- **Compra (Long)** ocorre quando os três RSI estão abaixo do valor de entrada configurado.
- **Venda (Short)** ocorre quando os três RSI estão acima do valor de entrada configurado.
- **Saída** ocorre quando qualquer um dos três RSI atinge o valor de saída correspondente.

A estratégia também permite inverter a lógica das entradas e saídas.

## 📌 Recursos
- ✅ Configuração personalizada dos periódos do RSI e dos gatilhos de entrada/saída.
- ✅ Opção de inversão da estratégia.
- ✅ Plotagem dos valores do RSI e dos gatilhos para melhor visualização.
- ✅ Implementação simples e eficiente para análise quantitativa.

## 🚀 Como usar?
Basta inserir o código na plataforma de backtesting compatível e ajustar os parâmetros conforme necessário para otimizar os resultados da estratégia.

### Exemplo de Configuração
```plaintext
// Exemplo de configuração\periodo_RSI_curto(7);
periodo_RSI_medio(14);
periodo_RSI_longo(21);
gatilhoEntradaC(30);
gatilhoSaidaC(70);
gatilhoEntradaV(70);
gatilhoSaidaV(30);
inventerEntrada(false);
```

## 📊 Plotagem dos Indicadores
O script também plota os seguintes elementos para melhor análise visual:
- RSI Curto
- RSI Médio
- RSI Longo
- Gatilhos de entrada e saída



