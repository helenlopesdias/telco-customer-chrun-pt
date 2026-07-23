-- VISÃO UNIFICADA DE SEGURANÇA ONLINE E SUPORTE TÉCNICO
SELECT 
  'Segurança Online' AS servico,
  OnlineSecurity AS possui_servico,
  COUNT(customerID) AS total_clientes,
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END), 2) AS taxa_churn
FROM `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY OnlineSecurity

UNION ALL

SELECT 
  'Suporte Técnico' AS servico,
  TechSupport AS possui_servico,
  COUNT(customerID) AS total_clientes,
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END), 4) AS taxa_churn
FROM `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY TechSupport
