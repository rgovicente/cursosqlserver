-- tabela muitos x muitos
/*
	uma cor pode estar presente em mais de um produto
	e um produto pode ter mais de uma cor 
	n-n  ( n produtos x n cores )
	Quando isso ocorre, temos que gerar nova tabela.

*/
CREATE TABLE TBL_PRODUTO_COR
(ID_PRODUTO INT ,ID_COR INT
	, CONSTRAINT PK_COR_PROD PRIMARY KEY(ID_PRODUTO,ID_COR)
)