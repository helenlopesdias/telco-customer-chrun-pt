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

```
📁 Estrutura do Repositório

telco-customer-churn-sql/
│
├── 📂 queries/
│   ├── 01_data_cleaning.sql                <-- Tratamento e limpeza da base de dados
│   ├── 02_kpis_saude_negocio.sql           <-- Métricas gerais de saúde do negócio (KPIs)
│   ├── 03_perfil_cliente.sql               <-- Análise do perfil demográfico dos clientes
│   ├── 04_analise_contratos.sql            <-- Churn rate por tipo de contrato
│   ├── 05_impacto_formas_pagamento.sql     <-- Participação e churn por forma de pagamento
│   ├── 06_analise_financeira.sql           <-- Faturamento e receita mensal perdida
│   ├── 07_churn_by_internet_service.sql    <-- Análise de cancelamento por serviço de internet
│   ├── 08_churn_by_online_security.sql     <-- Impacto da segurança online na retenção
│   ├── 09_churn_by_tech_suport.sql         <-- Impacto do suporte técnico na retenção
│   ├── 10_customer_engagement_service.sql  <-- Score de engajamento por número de serviços
│   ├── 11_churn_by_additional_services.sql <-- Comparativo unificado de serviços adicionais
│   └── 12_churn_by_tenure_groups.sql       <-- Efeito do tempo de casa (tenure) no churn
│
├── 📂 data/
│   └── dataset_info.md                     <-- Informações e dicionário de dados da base
│
└── 📄 README.md                            <-- Documentação completa do projeto

```

---


## Próximos Passos do Projeto

- [ ] Finalizar a documentação técnica das queries do repositório.
- [ ] Conectar a View tratada do BigQuery a uma ferramenta de Data Visualization (Power BI / Tableau) para construção de um Dashboard interativo.
- [ ] Criar recomendações estratégicas de negócios para o time de marketing focar na retenção dos perfis de maior risco.
