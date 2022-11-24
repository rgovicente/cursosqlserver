--FASE 2 POPULAR TABELA CONTAS_PAGAR.
INSERT INTO TBL_CONTAS_PAGAR
([DOCUMENTO], [DATA_EMISSAO], [DATA_LANCTO], [DATA_VENCIMENTO]
, [VALOR_DOCUMENTO])
SELECT 
CONCAT('COM-',FORMAT(ID_COMISSAO,'0000') ) AS DOCUMENTO
,CONCAT(ANO_REF,FORMAT(MES_REF,'00'),'01') AS EMISSAO
,GETDATE()
,CONCAT(ANO_REF,FORMAT(MES_REF,'00'),'25') AS VENCIMENTO
,BASE_COMISSAO*PERC_COMISSAO /100
FROM TBL_COMISSAO