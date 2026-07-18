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

```text
telco-customer-churn-sql/
│
├── 📂 queries/
│   ├── 01_data_cleaning.sql                    <-- Tratamento de tipos, nulos e criação de faixas de tenure.
│   ├── 02_kpis_saude_negocio.sql               <-- Faturamento, taxa de churn geral e lost revenue.
│   ├── 03_perfil_cliente.sql                   <-- Análise demográfica e comportamental (parceiros, dependentes).
│   ├── 04_analise_contratos.sql                <-- Churn rate por tipo de contrato (mensal vs longo prazo).
│   ├── 05_analise_financeira.sql               <-- Participação de faturamento por método de pagamento (Window Function).
│   ├── 06_churn_by_internet_service.sql        <-- Análise de quebra de retenção por tipo de internet (Fibra Óptica).
│   ├── 07_churn_by_additional_services.sql     <-- Impacto da ausência de suporte técnico e segurança online.
│   └── 08_customer_engagement_services.sql     <-- Score de engajamento por volume de serviços assinados (CTE).
│
├── 📂 data/
│   └── dataset_info.md                   <-- Informações e link para a base original do Kaggle.
│
└── 📄 README.md                          <-- Documentação do projeto e insights de negócio.    

---

## Próximos Passos do Projeto
- [ ] Finalizar a documentação técnica das queries do repositório.
- [ ] Conectar a View tratada do BigQuery a uma ferramenta de Data Visualization (Power BI / Tableau) para construção de um Dashboard interativo.
- [ ] Criar recomendações estratégicas de negócios para o time de marketing focar na retenção dos perfis de maior risco.
