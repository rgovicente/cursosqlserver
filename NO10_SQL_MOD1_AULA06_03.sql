/*
	USANDO JOIN E GROUP BY
			LISTAGEM COM A SEGUINTE FORMATA��O:
		NOME EMP,ID_EMP,SOMA(MES1) ,SOMA(MES2),SOMA(MES3)
		FILTRO : ANO DE 2016 E PRIMEIRO TRIMESTRE
		TABELAS : EMPREGADO X TB_PEDIDO

*/
SELECT 
NOME,TB_EMPREGADO.ID_EMPREGADO
,SUM(VLR_TOTAL) AS VENDAS
,MONTH(DATA_EMISSAO) AS MES
FROM TB_EMPREGADO JOIN TB_PEDIDO
ON TB_PEDIDO.ID_EMPREGADO = TB_EMPREGADO.ID_EMPREGADO 
WHERE MONTH(DATA_EMISSAO) IN(1,2,3) AND YEAR(DATA_EMISSAO) = 2016
--AND TB_EMPREGADO.ID_EMPREGADO =1
GROUP BY NOME,TB_EMPREGADO.ID_EMPREGADO ,MONTH(DATA_EMISSAO)