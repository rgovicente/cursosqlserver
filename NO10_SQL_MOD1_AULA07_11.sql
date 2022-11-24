/*
	SELF JOIN
*/
SELECT 
EMP.ID_EMPREGADO 
,EMP.NOME AS NOME_SUBORDINADO
,SUP.NOME AS NOME_SUPERVISOR
,SUP.ID_EMPREGADO AS COD_SUPERVISOR
,EMP.COD_SUPERVISOR AS COD_SUP_EMP
FROM TB_EMPREGADO AS EMP JOIN TB_EMPREGADO SUP
ON EMP.COD_SUPERVISOR = SUP.ID_EMPREGADO 
ORDER BY EMP.COD_SUPERVISOR 