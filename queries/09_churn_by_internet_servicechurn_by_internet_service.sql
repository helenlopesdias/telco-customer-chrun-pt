-- TAXAS DE CHURN ENTRE CLIENTES *NÃO* QUE CONTRATARAM SUPORTE TÉCNICO

SELECT  
  TechSupport,
  COUNT(customerID) AS total_customers,
  
  -- Média de cancelamento
  ROUND(
    AVG(CASE WHEN Churn = TRUE AND TechSupport = 'No' THEN 1 ELSE 0 END), 2
  ) AS rate_not_oline_security_churn
FROM 
  `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY
  TechSupport
ORDER BY 
  TechSupport DESC
