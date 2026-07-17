-- FATURAMENTO POR FORMA DE PAGAMENTO --

SELECT
  PaymentMethod,
  COUNT(customerID) AS total_customers,
  ROUND(
    SUM(MonthlyCharges), 2) AS total_monthly_revenue,

-- % do faturamento total da empresa
ROUND(
    100 * SAFE_DIVIDE(
      SUM(MonthlyCharges), 
      SUM(SUM(MonthlyCharges)) OVER()
    ), 2) AS revenue_share_percentage
FROM
  `clear-aurora-469314-a0`.Custumer_Churn.telco_customer_churn
GROUP BY
  PaymentMethod
ORDER BY 
  total_monthly_revenue DESC
