-- FORMATA��O
SELECT 
NOME
,FORMAT([DATA_NASCIMENTO],'d','pt-br') AS [DATA NASCIMENTO]
,FORMAT(([SALARIO]+[PREMIO_MENSAL]),'C','PT-BR') AS PROVENTO
FROM TB_EMPREGADO
-- filtro
WHERE SINDICALIZADO= 'S'

SELECT DISTINCT SINDICALIZADO FROM TB_EMPREGADO