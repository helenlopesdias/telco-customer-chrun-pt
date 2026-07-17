CREATE OR REPLACE VIEW `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean` AS
SELECT
  -- 1. Identificação do Cliente
  customerID,

  -- 2. Informações Demográficas e Cadastrais
  gender,
  -- Transformando 1 e 0 em Texto para facilitar a leitura nos gráficos e dashboards
  CASE WHEN SeniorCitizen = 1 THEN 'Yes' ELSE 'No' END AS SeniorCitizen,
  Partner,
  Dependents,

  -- 3. Histórico de Contrato e Tempo de Casa
  tenure,
  -- Criando faixas de tempo (Tenure Cohorts) para análises avançadas de retenção
  CASE 
    WHEN tenure <= 12 THEN '0-12 Months'
    WHEN tenure <= 24 THEN '13-24 Months'
    WHEN tenure <= 48 THEN '25-48 Months'
    ELSE 'More than 48 Months'
  END AS tenure_group,
  Contract,
  PaperlessBilling,
  PaymentMethod,

  -- 4. Serviços de Telecomunicações e Streaming
  PhoneService,
  MultipleLines,
  InternetService,
  OnlineSecurity,
  OnlineBackup,
  DeviceProtection,
  TechSupport,
  StreamingTV,
  StreamingMovies,

  -- 5. Informações Financeiras (Tratando os Erros de Tipo)
  MonthlyCharges,
  -- Correção crítica: SAFE_CAST transforma os espaços vazios de novos clientes (tenure=0) em NULL
  -- Coalesce substitui esse NULL por 0 para não quebrar as somas financeiras
  COALESCE(SAFE_CAST(TotalCharges AS FLOAT64), 0.0) AS TotalCharges,

  -- 6. Variável Alvo
  Churn

FROM 
  `clear-aurora-469314-a0.Custumer_Churn.telco_customer_churn`;
