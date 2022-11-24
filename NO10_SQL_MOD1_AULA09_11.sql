-- coluna computada.
/*
	caracteristicas
	dinâmica
	não ocupa espaço de disco
	base comissão - (valor_faturado - valor_cancelado)

*/
--ALTER TABLE DBO.TBL_COMISSAO
--ADD BASE_COMISSAO AS (VALOR_FATURADO-VALOR_CANCELADO)

SELECT ID_COMISSAO,MES_REF,ANO_REF,ID_EMPREGADO,VALOR_CANCELADO ,VALOR_FATURADO ,BASE_COMISSAO
FROM TBL_COMISSAO