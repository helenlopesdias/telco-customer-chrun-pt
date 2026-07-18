-- ANÁLISE DE CHURN PELO PERFIL DO CLIENTE

SELECT
  COUNT(DISTINCT customerID) AS total_customers,
  COUNT(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END) AS customer_churn,
  
-- % de clientes que cancelaram o serviço
  ROUND(
    SAFE_DIVIDE(
    SUM(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END),
    COUNT(DISTINCT customerID)
    ),
    2
  ) AS churn_rate,

-- Receita total e valor mensal médio pago pelos clientes:
  SUM(SAFE_CAST(TotalCharges AS FLOAT64)) AS total_revenue,
  AVG(MonthlyCharges) AS monthly_charges_rate,
  
-- Receita perdida por Churn:
  ROUND(
    SUM(CASE WHEN Churn = TRUE THEN MonthlyCharges ELSE 0 END), 2 
  ) AS lost_revenue,
FROM `clear-aurora-469314-a0.Custumer_Churn.telco_customer_churn`
