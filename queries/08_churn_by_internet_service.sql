-- TAXAS DE CHURN ENTRE CLIENTES *NÃO* QUE CONTRATARAM SEGURANÇA ONLINE

SELECT  
  OnlineSecurity,
  COUNT(customerID) AS total_customers,
  
  -- Média de cancelamento real convertida para %
  ROUND(
    AVG(CASE WHEN Churn = TRUE
  THEN 1.0 ELSE 0.0 END), 2
    ) AS rate_online_security_churn
FROM 
  `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY
  OnlineSecurity
ORDER BY 
  rate_online_security_churn DESC;
