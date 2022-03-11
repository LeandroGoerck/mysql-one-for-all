SELECT
	FORMAT(MIN(price), 2) AS faturamento_minimo,
  FORMAT(MAX(price), 2) AS faturamento_maximo,
  FORMAT(AVG(price), 2) AS faturamento_medio,
  FORMAT(SUM(price), 2) AS faturamento_total
FROM
	SpotifyClone.users AS u
JOIN
	SpotifyClone.plans AS p ON u.plan_id = p.plan_id; 