-- Impacto do Suporte Técnico
SELECT  
  TechSupport,
  COUNT(customerID) AS total_customers,
  
  -- Média de cancelamento real convertida para %
  ROUND(
  AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END), 4
  ) AS rate_tech_support_churn
FROM 
  `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY
  TechSupport
ORDER BY 
  rate_tech_support_churn DESC
