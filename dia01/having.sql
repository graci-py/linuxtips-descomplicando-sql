-- Databricks notebook source
SELECT
  descUF,
  count(idVendedor) as qtVendedorUF
FROM
  silver_olist.vendedor
WHERE descUF IN ('SP','MG','RJ', 'ES')
GROUP BY
  descUF
HAVING COUNT(idVendedor) >= 100
ORDER BY qtVendedorUF DESC

