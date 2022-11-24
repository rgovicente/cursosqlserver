--SELECT * FROM TBL_PARTICIPANTE
-- sql - S - STRUCTURE Q - QUERY  L - LANGUAGE
/*
	sintaxe do comando:
	INSERIR NA TABELA TBL_PARTICIPANTE 
	(COLUNA1,COLUNA2 )
	ESTES VALORES
	('VALOR1','VALOR2') 
	* - COLUNAS E VALORES DEVEM TER A MESMA QUANTIDADE E TIPAGEM
	VALOR1->COLUNA1 E VALOR2->COLUNA2 E ASSIM SUCESSIVAMENTE

*/
INSERT INTO TBL_PARTICIPANTE 
(EMAIL,NOME)
VALUES
('alfredo.nascimento@volit.com.br','alfredo'),
('raissamatano@gmail.com','raissa'),
('abraao.araujo@outlook.com.br','abraao')
