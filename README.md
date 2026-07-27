# Análise Estratégica de Churn de Clientes | Telecom Analytics

## Sobre o Projeto

Uma empresa de telecomunicações enfrenta uma elevada taxa de evasão de clientes (**Customer Churn**), impactando diretamente sua receita e rentabilidade.

O objetivo deste projeto é identificar os principais fatores associados ao cancelamento de clientes, compreender padrões de comportamento e propor recomendações estratégicas que auxiliem na redução do churn e no aumento da retenção.

Todo o projeto foi desenvolvido seguindo um fluxo completo de análise de dados, desde a preparação dos dados até a construção de um dashboard executivo.

---

## Dashboard


https://github.com/user-attachments/assets/e2bec9de-edd0-4bdd-a9e5-fe2270ac5114


---

# Tecnologias Utilizadas

<div align="center">

<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" title="Python" height="55"/>&nbsp;&nbsp;
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/pandas/pandas-original.svg" title="Pandas" height="55"/>&nbsp;&nbsp;
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" title="Jupyter Notebook" height="55"/>&nbsp;&nbsp;
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" title="Visual Studio Code" height="55"/>&nbsp;&nbsp;
<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original.svg" title="SQL" height="55"/>&nbsp;&nbsp;
<img src="https://upload.wikimedia.org/wikipedia/commons/c/cf/New_Power_BI_Logo.svg" title="Power BI" height="55"/>&nbsp;&nbsp;
<img src="https://www.vectorlogo.zone/logos/kaggle/kaggle-icon.svg" title="Kaggle" height="55"/>

</div>

---

# Fluxo do Projeto

```text
Coleta dos Dados
        │
        ▼
Limpeza e Tratamento (SQL)
        │
        ▼
Análise Exploratória (Python)
        │
        ▼
Criação de KPIs
        │
        ▼
Dashboard Executivo (Power BI)
        │
        ▼
Insights de Negócio
        │
        ▼
Recomendações Estratégicas
```

---

# Etapas Desenvolvidas

### 📂 Coleta dos Dados

- Dataset público **Telco Customer Churn**
- Fonte: Kaggle

---

### Limpeza dos Dados

Nesta etapa foram realizadas:

- Tratamento de valores nulos
- Correção dos tipos de dados
- Padronização das variáveis
- Verificação de inconsistências
- Preparação da base para análise

---

### Análise Exploratória (EDA)

Utilizando **Python**, foram realizadas análises para identificar padrões entre o cancelamento e o comportamento dos clientes.

Principais análises:

- Distribuição das variáveis
- Crosstab
- Heatmaps
- Correlações
- Comparação entre grupos
- Análise de permanência (Tenure)
- Análise dos serviços contratados

Bibliotecas utilizadas:

- Pandas
- Matplotlib
- Seaborn

---

### 💻 Análise em SQL

Foram desenvolvidas consultas para:

- Limpeza dos dados
- Exploração da base
- Criação dos KPIs
- Geração de métricas de negócio
- Suporte às análises realizadas no Power BI

---

## KPIs Monitorados

- Total de Clientes
- Receita Total
- Receita Perdida
- Mensalidade Média
- Tempo Médio de Permanência
- Taxa de Churn

---

# Principais Insights

Após a análise dos dados, foram identificados alguns padrões importantes.

### 📌 Contratos Mensais apresentam maior taxa de churn

Clientes com contratos mensais possuem a maior taxa de cancelamento e menor tempo médio de permanência.

Apesar disso, esse tipo de contrato representa a principal porta de entrada de novos clientes e não deve ser eliminado.

---

### 📌 Método de Pagamento influencia o Churn

Clientes que utilizam **Cheque Eletrônico** apresentam maior propensão ao cancelamento.

A necessidade de realizar um pagamento manual todos os meses aumenta o atrito durante a jornada do cliente.

---

### 📌 Perfil de maior risco

Clientes sem parceiro(a) e sem dependentes apresentaram maiores taxas de evasão.

Esse grupo tende a possuir menor vínculo contratual e maior flexibilidade para trocar de fornecedor.

---

### 📌 Permanência reduz o risco

Quanto maior o tempo de permanência do cliente na empresa, menor a probabilidade de cancelamento.

Os primeiros meses representam o período mais crítico para retenção.

---

### 📌 Maior engajamento reduz cancelamentos

Clientes com maior quantidade de serviços contratados apresentaram menor taxa de churn, indicando maior fidelização.

---


# Recomendações Estratégicas

Com base nos resultados obtidos, foram propostas algumas ações.

### - Incentivar pagamento automático

Criar benefícios para clientes que utilizem débito automático ou cartão de crédito, reduzindo a dependência do cheque eletrônico.

---

### - Campanhas de retenção

Concentrar campanhas de relacionamento entre o terceiro e o sexto mês de contrato, período em que ocorre grande parte dos cancelamentos.

---

### - Estratégias de Upsell

Estimular clientes do plano mensal a migrarem para contratos anuais ou bienais através de ofertas personalizadas.

---

### - Fidelização por serviços

Incentivar a contratação de serviços adicionais para aumentar o engajamento e reduzir a probabilidade de cancelamento.

---

# 📂 Estrutura do Projeto

```text
customer-churn-analysis
│
├── data
│   └── telco_customer_churn.csv
│
├── images
│   └── dashboard_customer_churn.png
│
├── notebooks
│   └── 01_eda_churn_analysis.ipynb
│
├── powerbi
│   └── Customer_Churn_Analysis.pbix
│
├── sql
│   ├── 01_data_cleaning.sql
│   ├── 02_exploratory_analysis.sql
│   ├── 03_kpis.sql
│   └── 04_business_insights.sql
│
└── README.md
```

---

# Competências Demonstradas

- SQL para Análise de Dados
- Limpeza e Preparação de Dados
- Análise Exploratória (EDA)
- Business Intelligence
- Power BI
- Python para Análise de Dados
- Storytelling com Dados
- Desenvolvimento de KPIs
- Visualização de Dados
- Análise de Churn
- Tomada de Decisão Baseada em Dados

---

## Fonte dos Dados

**Dataset:** Telco Customer Churn

Disponível no **Kaggle** para fins educacionais e de estudo.

---

> Projeto desenvolvido com foco em Análise de Dados, Business Intelligence e apoio à tomada de decisão baseada em dados.
