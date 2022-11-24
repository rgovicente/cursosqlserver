/*
	PAG 151:
	3. Selecione os produtos que nunca foram vendidos;
		TB_PRODUTO X TBITENSPEDIDOS   6 linhas
	7. Apresente os vendedores que não venderam em Dezembro de 2019;
		TB_EMPREGADO X TB_PEDIDO x TB_CARGO( cargo like 'vendedor%')
	PAG 175:  GROUP BY

	2. Calcule a média de preço de venda (PRECO_VENDA) 
			do cadastro de TB_PRODUTO;
	3. Calcule a quantidade de pedidos (TB_PEDIDO)
		cadastrados em janeiro de 2018 
		(o maior e o menor valor total, VLR_TOTAL);
	
	21:40  -> 21:50
*/
-- PAG 175 - 3
SELECT COUNT(ID_PEDIDO) AS QTDE,MAX(VLR_TOTAL) AS MAIOR_VALOR
,MIN(VLR_TOTAL) AS MENOR_VALOR
FROM TB_PEDIDO 
--WHERE DATA_EMISSAO BETWEEN '2018-01-01' AND '2018-01-31'
WHERE YEAR(DATA_EMISSAO) = 2018 AND MONTH(DATA_EMISSAO) = 01


-- pag 151 - 3
select * from tb_produto
where id_produto not in(select id_produto from TB_ITENSPEDIDO )
-- pag 151 - 7
SELECT * FROM TB_EMPREGADO 
WHERE ID_EMPREGADO NOT IN (SELECT ID_EMPREGADO FROM 
							TB_PEDIDO WHERE DATA_EMISSAO
							BETWEEN '2019-12-01' AND '2019-12-31')
AND ID_CARGO IN (SELECT ID_CARGO FROM TB_CARGO 
					WHERE CARGO LIKE 'VENDEDOR%')

-- PAG 175 2
SELECT 
AVG(PRECO_VENDA) AS PRECO_MEDIO_VENDA
--,id_tipo 
FROM TB_PRODUTO --GROUP BY ID_TIPO
