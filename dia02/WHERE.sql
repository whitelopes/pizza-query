-- Databricks notebook source
SELECT *
FROM silver.pizza_query.pedido
WHERE flKetchup = true
AND descUF = 'Rio de Janeiro'

-- COMMAND ----------


