SELECT TOP 10 * FROM TB_PEDIDO   -- ATUA SOMENTE COMO LIMITE

-- OS 10 MENORES VALORES ( CLASSIFICATORIO )
SELECT TOP 10 ID_PEDIDO,VLR_TOTAL,DATA_EMISSAO
FROM TB_PEDIDO 
WHERE VLR_TOTAL IS NOT NULL AND VLR_TOTAL > 0
ORDER BY VLR_TOTAL ASC

-- OS 10 MAIORES VALORES ( CLASSIFICATORIO )
SELECT TOP 10 ID_CLIENTE,ID_PEDIDO,VLR_TOTAL,DATA_EMISSAO,STATUS
FROM TB_PEDIDO 
WHERE VLR_TOTAL IS NOT NULL AND VLR_TOTAL > 0
ORDER BY VLR_TOTAL DESC