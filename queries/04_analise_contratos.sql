-- TAXAS DE CHURN DE ACORDO COM TIPO DE CONTRATO

SELECT
  Contract,
  COUNT(customerID) AS total_customers,
  SUM(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END) AS total_churn,

  -- Média de cancelamento
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN 1.0 ELSE 0.0 END), 
    2
  ) AS churn_rate_percentage,
FROM 
  `clear-aurora-469314-a0.Custumer_Churn.telco_customer_churn`
GROUP BY 
  Contract
ORDER BY 
  churn_rate_percentage DESC
