# Telco Customer Churn Analysis - SQL Project

## Sobre o Projeto
Este projeto tem como objetivo analisar a base de dados de clientes de uma empresa de Telecomunicações para entender os fatores que levam ao cancelamento de planos (**Churn**) e mensurar o impacto financeiro dessa evasão no faturamento mensal da companhia.

As análises e a engenharia de dados foram desenvolvidas utilizando a linguagem **SQL** no ambiente **Google BigQuery**.

---

## Tecnologias e Recursos Utilizados
*   **Banco de Dados:** Google BigQuery (Cloud SQL)
*   **Linguagem Principal:** SQL (Padrão Google Standard SQL)
*   **Recursos Avançados:** Funções Condicionais (`CASE WHEN`), Divisões Seguras (`SAFE_DIVIDE`), Conversões Seguras (`SAFE_CAST`) e Funções de Janela (`Window Functions / OVER`).

---

## 📂 Estrutura do Repositório
*   `queries/01_data_cleaning.sql`: Query responsável pelo tratamento de dados, conversão de tipos de texto para decimal, tratamento de strings vazias com `COALESCE` e criação de faixas de tempo (*tenure groups*).
*   `queries/02_kpis_saude_negocio.sql`: Indicadores gerais da empresa, como receita total, receita mensal perdida e taxa de churn geral.
*   `queries/03_perfil_cliente.sql`: Cruzamento de dados demográficos (como estado civil/parceiros) com o volume de cancelamentos.
*   `queries/04_analise_contratos.sql`: Análise detalhada das taxas de churn segmentadas por tipo de contrato.
*   `queries/05_analise_financeira.sql`: Estudo do faturamento mensal por método de pagamento e cálculo de *market share* de cada modalidade.

---

## Principais Insights Encontrados (Até o Momento)

*   **O Grande Gargalo dos Contratos:** Clientes com contratos mensais (*Month-to-month*) possuem uma taxa de churn alarmante de **42,71%**, enquanto contratos de longo prazo (2 anos) mantêm a evasão sob controle, abaixo de **3%**.
*   **Relação Comportamental:** Clientes que declararam não possuir parceiros/cônjuges cancelam quase o dobro (1.200 cancelamentos) em relação aos clientes que possuem parceiros (669 cancelamentos).
*   **Risco no Faturamento:** O método de pagamento via *Electronic Check* (Boleto/Cheque eletrônico) é a maior fonte de faturamento mensal da empresa, porém concentra o maior volume absoluto de churn, gerando um sinal de alerta para o negócio.

---

## Próximos Passos do Projeto
- [ ] Finalizar a documentação técnica das queries do repositório.
- [ ] Conectar a View tratada do BigQuery a uma ferramenta de Data Visualization (Power BI / Tableau) para construção de um Dashboard interativo.
- [ ] Criar recomendações estratégicas de negócios para o time de marketing focar na retenção dos perfis de maior risco.
