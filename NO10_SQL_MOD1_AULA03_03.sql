SELECT * FROM TB_CARGO
WHERE CARGO = 'TESTANDO 1'
ORDER BY SALARIO_INIC DESC

SELECT * FROM TB_CARGO
WHERE CARGO LIKE 'TEST%'
ORDER BY SALARIO_INIC DESC

SELECT * FROM TBL_PARTICIPANTE 
WHERE NOME LIKE 'A%' OR NOME LIKE 'I%'