-- TAXAS DE ADESÃO A SERVIÇOS ADICIONAIS

WITH service_for_customer AS (
  SELECT
    customerID,
    Churn,
    (
      -- Serviços de conectividade
      (CASE WHEN PhoneService = TRUE THEN 1 ELSE 0 END) +
      (CASE WHEN MultipleLines =  'Yes' THEN 1 ELSE 0 END) +
      (CASE WHEN InternetService != 'Yes' THEN 1 ELSE 0 END) +
       
      -- Serviços de segurança e suporte
      (CASE WHEN OnlineSecurity = 'Yes' THEN 1 ELSE 0 END) +
      (CASE WHEN OnlineBackup = 'Yes' THEN 1 ELSE 0 END) +
      (CASE WHEN DeviceProtection = 'Yes' THEN 1 ELSE 0 END) +
      (CASE WHEN TechSupport = 'Yes' THEN 1 ELSE 0 END) +

      -- Serviço de Streaming
      (CASE WHEN StreamingTV = 'Yes' THEN 1 ELSE 0 END) +
      (CASE WHEN StreamingMovies = 'Yes' THEN 1 ELSE 0 END)
    ) AS total_services_signed
  FROM
    `clear-aurora-469314-a0`.Custumer_Churn.vw_telco_customer_churn_clean
)

SELECT
  total_services_signed AS number_of_services,
  COUNT(customerID) AS total_customers,

  -- % de clientes que tem essa quantidade de serviços
  ROUND(
    SAFE_DIVIDE(COUNT(customerID), SUM(COUNT(customerID)) OVER()), 2
  ) AS customer_share_percentage,
  
  -- Taxa de churn para cada nível de engajamento   
  ROUND (
    AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END), 2
  ) AS churn_rate_percentage

FROM service_for_customer
GROUP BY 
  total_services_signed
ORDER BY 
  total_services_signed
