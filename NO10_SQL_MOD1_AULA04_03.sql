-- WITH TIES
SELECT TOP 7 WITH TIES ID_EMPREGADO, NOME, SALARIO
FROM TB_EMPREGADO
ORDER BY SALARIO DESC;