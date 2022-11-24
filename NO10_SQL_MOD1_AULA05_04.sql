/*
	LABORATORIO 4 PAG 116  ( tb_pedido )
	2. Liste todos os pedidos 
	   com data de emiss�o anterior a Jan/2017;
	4. Liste todos os pedidos 
	    com data de emiss�o em janeiro e junho de 2016;

	LABORATORIO 1 PAG 132 - JOIN
	2. Liste os campos ID_PEDIDO, DATA_EMISSAO e VLR_TOTAL 
	da tabela TB_PEDIDO,seguidos de NOME do vendedor 
	da tabela TB_EMPREGADO
	6. Liste os itens de pedido 
		(TB_ITENSPEDIDO) com o nome do produto 
		(TB_PRODUTO.DESCRICAO);
  20:24  -> 20:35 
*/
-- L4 2
SELECT * FROM TB_PEDIDO WHERE DATA_EMISSAO < '2017-01-01' -- ANSI
-- L4 4
SELECT ID_PEDIDO,FORMAT(DATA_EMISSAO,'dd/MM/yyyy') as emissao,VLR_TOTAL
FROM TB_PEDIDO 
--WHERE YEAR(DATA_EMISSAO) = 2016 AND MONTH(DATA_EMISSAO) IN(1,6)
WHERE  (DATA_EMISSAO BETWEEN '2016-01-01' AND '2016-01-31')
OR   (DATA_EMISSAO BETWEEN '2016-06-01' AND '2016-06-30')


--(DATA_EMISSAO >= '' AND DATA_EMISSAO <='')
--AND (DATA_EMISSAO >='' AND DATA_EMISSAO <='')
/* 
	VARIA��ES :
		DATA_EMISSAO BETWEEN '' AND ''
		AND DATA_EMISSAO BETWEEN '' AND ''
		YEAR(DATA_EMISSAO) = 2016 AND MONTH(DATA_EMISSAO) IN(1,6)
*/

SELECT   TB_PEDIDO.ID_PEDIDO, TB_PEDIDO.DATA_EMISSAO
		, TB_PEDIDO.VLR_TOTAL, TB_EMPREGADO.NOME
FROM     TB_PEDIDO INNER JOIN TB_EMPREGADO 
	ON TB_PEDIDO.ID_EMPREGADO = TB_EMPREGADO.ID_EMPREGADO

SELECT ITENS.*,DESCRICAO
FROM TB_ITENSPEDIDO ITENS JOIN TB_PRODUTO AS PROD
ON ITENS.ID_PRODUTO = PROD.ID_PRODUTO 