WITH plan_stats AS
  (SELECT o.subscription_id,
  COUNT(DISTINCT o.customer_id) AS clientes_unicos,
  SUM(s.price_per_month * CAST (s.subscription_length AS INT)) AS ingresos_totales,
  AVG(s.price_per_month* CAST(s.subscription_length AS INT)) AS ticket_promedio,
  AVG(CAST (s.subscription_length AS INT)) AS duracion_promedio_meses
  FROM orders o
  JOIN subscriptions s
  ON o.subscription_id = s.subscription_id
  GROUP BY o.subscription_id
)

SELECT 
  s.description,
  ps.clientes_unicos,
  ps.ingresos_totales,
  ROUND(ps.ticket_promedio,2)AS ticket_promedio, 
  ROUND(ps.duracion_promedio_meses,2) AS duracion_promedio_meses
FROM plan_stats ps
JOIN subscriptions s
ON ps.subscription_id = s.subscription_id
ORDER BY ps.ingresos_totales DESC


