-- FATURAMENTO POR FORMA DE PAGAMENTO --

SELECT
  PaymentMethod,
  COUNT(customerID) AS total_customers,

-- Receita total por método de pagamento
  ROUND(
    SUM(MonthlyCharges), 2) AS total_monthly_revenue,

-- Receita mensal retida (clientes ativos)
  ROUND(
    SUM(CASE WHEN Churn = FALSE THEN MonthlyCharges END), 2 
  ) AS monthly_revenue_win,

-- Receita mensal perdida (churn)
ROUND(
  SUM(CASE WHEN Churn = TRUE THEN MonthlyCharges END), 2
) AS monthly_revenue_lost,

-- % do faturamento total da empresa
ROUND(
  SAFE_DIVIDE(
    SUM(MonthlyCharges), 
    SUM(SUM(MonthlyCharges)) OVER()
    ), 4) AS revenue_share_percentage
FROM
  `clear-aurora-469314-a0`.Custumer_Churn.telco_customer_churn
GROUP BY
  PaymentMethod
ORDER BY 
  total_monthly_revenue DESC
