-- PERFIL DE CLIENTE E COMPORTAMENTO 

SELECT
-- Tenure médio de quem cancelou vs quem continua ativo:
  ROUND(
    AVG(CASE WHEN Churn = TRUE THEN tenure END), 2) AS avg_tenure_churn_yes,
  ROUND(
    AVG(CASE WHEN Churn = FALSE THEN tenure END), 2) AS avg_tenure_churn_no,  

-- Taxa de cancelamento pessoas solteiras:
  ROUND(
    100 * SAFE_DIVIDE(
      SUM(CASE WHEN Partner = FALSE AND Churn = TRUE THEN 1 ELSE 0 END),
      SUM(CASE WHEN Partner = FALSE THEN 1 ELSE 0 END)
    ),
    2
  ) AS churn_rate_no_partner,

-- Taxa de cancelamento pessoas casadas:
  ROUND(
    100 * SAFE_DIVIDE(
      SUM(CASE WHEN Partner = TRUE AND Churn = TRUE THEN 1 ELSE 0 END),
      SUM(CASE WHEN Partner = TRUE THEN 1 ELSE 0 END)
    ),
    2
  ) AS churn_rate_with_partner,

-- Taxa de churn entre clientes idosos:
  ROUND(
    100 * SAFE_DIVIDE(
      SUM(CASE WHEN SeniorCitizen = 1 AND Churn = TRUE THEN 1 ELSE 0 END),
      SUM(CASE WHEN SeniorCitizen = 1 THEN 1 ELSE 0 END)
    ),
    2
  ) AS churn_senior_citizen,
FROM `clear-aurora-469314-a0.Custumer_Churn.telco_customer_churn`
