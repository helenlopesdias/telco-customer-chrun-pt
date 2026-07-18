-- IMPACTO DAS FORMAS DE PAGAMENTO

SELECT
  PaymentMethod,
  COUNT(customerID) AS total_customers,
  
  -- Churn total
  SUM(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END) AS total_churn,

  -- Média de cancelamentos
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END), 
    2
  ) AS churn_rate_percentage,
FROM
  `clear-aurora-469314-a0`.Custumer_Churn.telco_customer_churn
GROUP BY
  PaymentMethod
ORDER BY 
  churn_rate_percentage DESC
