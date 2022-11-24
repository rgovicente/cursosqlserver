--Apagar a tabela caso ela exista
IF EXISTS(SELECT * FROM SYS.tables WHERE name LIKE 'EMP_T%')
	DROP TABLE EMP_TEMP;
--Cria a tabela a partir da cl�usula INTO
SELECT * INTO EMP_TEMP FROM TB_EMPREGADO;
-- Testando
SELECT * FROM EMP_TEMP;
--Em seguida, excluiremos de EMP_TEMP o funcion�rio de c�digo 3:
DELETE FROM EMP_TEMP WHERE ID_CARGO = 3;
--O pr�ximo passo � alterar os sal�rios dos funcion�rios do departamento 2 da tabela
EMP_TEMP:
UPDATE EMP_TEMP SET SALARIO *= 1.2
WHERE ID_DEPARTAMENTO = 2
-- LISTAGEM POS PROCESSAMENTO
SELECT * FROM EMP_TEMP;