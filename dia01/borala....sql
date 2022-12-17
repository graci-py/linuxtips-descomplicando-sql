-- Databricks notebook source
-- Qual categoria tem mais produtos vendidos
SELECT T2.descCategoria,
        COUNT(*)
FROM silver_olist.item_pedido AS T1
LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto
GROUP BY T2.descCategoria
ORDER BY COUNT(*) DESC

-- COMMAND ----------

-- Qual categoria tem produtos mais caros, em média?

SELECT  ROUND(AVG(T1.vlPreco)) AS PrecoMedio,
        T2.descCategoria,
        MAX(T1.vlPreco)
FROM silver_olist.item_pedido AS T1
LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto
GROUP BY T2.descCategoria
ORDER BY MAX(T1.vlPreco) DESC

-- COMMAND ----------

-- Os clientes de qual estado pagam frete mais caro?
SELECT T3.descUF,
       AVG(T1.vlFrete) AS avgFrete
FROM silver_olist.item_pedido AS T1
LEFT JOIN silver_olist.pedido AS T2
ON T1.idpedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCliente = T3.idCliente 

GROUP BY T3.descUF

HAVING avgFrete > 40

ORDER BY avgFrete
