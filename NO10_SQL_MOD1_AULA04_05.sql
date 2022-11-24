/*
2. Liste a tabela TB_PRODUTO, criando campo 
calculado (QTD_REAL - QTD_MINIMA),
e filtre os registros resultantes
, mostrando somente aqueles que tiverem a quantidade
real abaixo da quantidade mínima; 
 LISTA: ID_PRODUTO,DESCRICAO,QTD_REAL,QTD_MINIMA,(CALCULO)

3. Liste a tabela TB_PRODUTO, mostrando os registros 
que tenham quantidade real acima de 5000;

11. Liste os produtos com QTD_REAL menor que 500 ou maior que 1000.

20:44 -> 20:49/50
*/
--2 -
SELECT ID_PRODUTO ,DESCRICAO ,QTD_REAL ,QTD_MINIMA 
,(QTD_REAL -QTD_MINIMA )
FROM TB_PRODUTO WHERE QTD_REAL < QTD_MINIMA 

SELECT * FROM TB_PRODUTO WHERE QTD_REAL < 500 OR QTD_REAL > 1000
ORDER BY QTD_REAL

SELECT * FROM TB_PRODUTO WHERE QTD_REAL > 5000