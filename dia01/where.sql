-- Databricks notebook source
SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao = 'delivered' 
 --LIMIT100

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' or descSituacao =  'canceled')
AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND year(dtPedido) = '2018'

-- COMMAND ----------

SELECT
  *,
  datediff(dtEstimativaEntrega, dtAprovado)
FROM
  silver_olist.pedido
WHERE
  descSituacao IN ('shipped', 'canceled')
  AND year(dtPedido) = '2018'
  AND datediff(dtEstimativaEntrega, dtAprovado) >30
