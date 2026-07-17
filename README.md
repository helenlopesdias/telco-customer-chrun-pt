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
│   ├── 01_data_cleaning.sql       
│   ├── 02_kpis_saude_negocio.sql  
│   ├── 03_perfil_cliente.sql       
│   ├── 04_analise_contratos.sql    
│   ├── 05-impacto-formas-pagamento.sql
|   └── 06_analise_financeira.sql   
│
├── 📂 data/
│   └── dataset_info.md  
│
└── 📄 README.md            

---

## Próximos Passos do Projeto
- [ ] Finalizar a documentação técnica das queries do repositório.
- [ ] Conectar a View tratada do BigQuery a uma ferramenta de Data Visualization (Power BI / Tableau) para construção de um Dashboard interativo.
- [ ] Criar recomendações estratégicas de negócios para o time de marketing focar na retenção dos perfis de maior risco.
