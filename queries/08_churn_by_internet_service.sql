-- TAXAS DE CHURN ENTRE CLIENTES *NÃO* QUE CONTRATARAM SEGURANÇA ONLINE

SELECT  
  OnlineSecurity,
  COUNT(customerID) AS total_customers,
  
  -- Média de churn
  ROUND(
    AVG(CASE WHEN Churn = TRUE AND OnlineSecurity = 'No' THEN 1 ELSE 0 END), 2
  ) AS rate_not_oline_security_churn
FROM 
  `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY
  OnlineSecurity
ORDER BY 
  OnlineSecurity DESC
