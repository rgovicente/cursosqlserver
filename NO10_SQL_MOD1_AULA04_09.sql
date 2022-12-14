-- GRUPANDO POR STATUS
SELECT
STATUS
,MIN(DATA_EMISSAO)		AS PRIMEIRA_EMISSAO
,MAX(DATA_EMISSAO)		AS ULTIMA_EMISSAO
,MIN(ID_PEDIDO)			AS PRIMEIRO_NUM_EMITIDO
,MAX(ID_PEDIDO)			AS ULTIMO_NUM_EMITIDO
,MIN(VLR_TOTAL)			AS MENOR_VALOR_FATURADO
,MAX(VLR_TOTAL)			AS MAIOR_VALOR_FATURADO
,SUM(VLR_TOTAL)			AS TOTAL_FATURADO
,AVG(VLR_TOTAL)			AS VALOR_MEDIO
,COUNT(ID_PEDIDO)		AS QTDE_REGISTROS
FROM TB_PEDIDO GROUP BY STATUS ORDER BY STATUS
