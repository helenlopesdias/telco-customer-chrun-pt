-- TAXAS DE CHURN ENTRE CLIENTES QUE POSSUEM FIBRA ÓPTICA, DSL E QUE NÃO TÊM INTERNET
SELECT  
  InternetService,
  COUNT(customerID) AS total_customers,
  
  -- Total de churn por tipo de serviço de internet
  SUM(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END) AS total_churn,
 
  -- Média de churn por tipo de serviço de internet
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END),2 
  ) AS rate_internet_service_churn
FROM 
`clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean` 
GROUP BY
  InternetService
ORDER BY
  InternetService DESC
