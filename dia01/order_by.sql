-- Databricks notebook source
SELECT
  descUf,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtClienteEstado

-- COMMAND ----------

SELECT
  descUf,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY 2

-- COMMAND ----------

SELECT
  descUf,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  COUNT(DISTINCT idClienteUnico)

-- COMMAND ----------

SELECT
  descUf,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtClienteEstado DESC

-- COMMAND ----------

SELECT
  descUf,
  COUNT(DISTINCT idClienteUnico) AS qtClienteEstado
FROM
  silver_olist.cliente
GROUP BY
  descUF
ORDER BY
  qtClienteEstado DESC
  
LIMIT 1
