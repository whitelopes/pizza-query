-- Databricks notebook source
SELECT count(*),
       count(1),
       count(idPedido)
FROM silver.pizza_query.pedido

-- COMMAND ----------

SELECT count(*)
FROM silver.pizza_query.pedido
WHERE flKetchup IS NOT NULL

-- COMMAND ----------

SELECT descUF, 
       count(*) AS qtdePedidos
FROM silver.pizza_query.pedido
WHERE descUF != 'São Paulo'
GROUP BY descUF
HAVING qtdePedidos >= 75
ORDER BY qtdePedidos DESC
LIMIT 5

-- COMMAND ----------



-- COMMAND ----------

SELECT descUF, 
       flKetchup,
       count(*) AS contagem
FROM silver.pizza_query.pedido
WHERE flKetchup = TRUE
GROUP BY descUF, flKetchup
ORDER BY contagem DESC
