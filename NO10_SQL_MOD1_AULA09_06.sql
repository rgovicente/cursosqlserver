/*
	CAPITULO 8 : estrutura de informa��o ( tipagem ) 
	- acessos externos (*) - depende de configura��o
	(*)- sugest�o -> instalar a vers�o developer e seguir os passos da apostila
	sp_configure -> openrowset (excel,vba... )
	objetos a serem criados:
	1 - coluna computada 
	2 - sequencia ( nova tabela do financeiro )
	3 - tipos de dados do usuario
*/
SELECT * FROM SYSTYPES WHERE NAME LIKE '%VALOR%'