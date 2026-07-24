-- ANALISE DE TENDÊNCIA DE CHURN POR FAIXA DE TEMPO
SELECT 
  tenure_group,

-- Faixas ex: '0-12 meses', '13-24 meses', '25-36 meses', etc.
  COUNT(customerID) AS total_clientes,
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN 1 ELSE 0 END), 4 
  ) AS taxa_churn
FROM `clear-aurora-469314-a0.Custumer_Churn.vw_telco_customer_churn_clean`
GROUP BY tenure_group
ORDER BY tenure_group
