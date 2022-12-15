-- Databricks notebook source
SELECT COUNT(*) AS nrLinhasNaoNulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS nrLinhasNaoNulas,
        COUNT (idCliente) AS nrClientesNaoNulo
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS nrLinhasNaoNulas,
        COUNT (idCliente) AS nrClientesNaoNulo,
        COUNT(distinct idCliente) AS nrIdClienteDistintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*) AS nrLinhasNaoNulas,
        COUNT (idCliente) AS nrClientesNaoNulo,
        COUNT(distinct idCliente) AS nrIdClienteDistintos,
        COUNT(distinct idClienteUnico) AS nrIdClienteUnicoDistintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT COUNT(*),
      COUNT(distinct idCliente) AS qtdClientes,
      COUNT(distinct idClienteUnico) AS qtdClientesUnicos
FROM silver_olist.cliente
WHERE descCidade IN ('ribeirao preto', 'guara')

-- COMMAND ----------

SELECT
  ROUND(AVG(vlPreco),2) AS avgPreco,
  INT(PERCENTILE(vlPreco, 0.5)) AS medianPreco,
  MAX(vlPreco) AS maxPreco,
  AVG(vlFrete) AS avgFrete,
  MAX(vlFrete) AS maxFrete,
  MIN(vlFrete) AS minFrete
FROM
  silver_olist.item_pedido

-- COMMAND ----------

SELECT
  COUNT(*)
FROm
  silver_olist.cliente
WHERE
  descUF = 'SC'

-- COMMAND ----------

SELECT
  descUF,
  COUNT(*)
FROm
  silver_olist.cliente
GROUP BY descUF 

-- COMMAND ----------

SELECT
  descUF,
  COUNT(distinct(idClienteUnico))
FROm
  silver_olist.cliente
GROUP BY descUF 
