-- SINTAXE
/*
	COMANDO PRINCIPAL ( INSERT )
		CLAUSULA DESTINO ( INTO )
	OBJETO ( VERBO TRANSITIVO ) - TABELA
	( ESTRUTURA A SER VALORADA ) - COLUNAS
	DESIGNA��O	
		FORMA 1 - VALOR  ( VALUES )
		FORMA 2 - POR SELE��O ( SELECT )
*/
INSERT INTO DBO.TBL_PARTICIPANTE 
(NOME,EMAIL)
VALUES
('ELON MUSK','MUSK@TWITTER.COM')

SELECT * FROM DBO.TBL_PARTICIPANTE 