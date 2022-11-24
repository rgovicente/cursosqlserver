/*
	CAPITULO 8 : estrutura de informação ( tipagem ) 
	- acessos externos (*) - depende de configuração
	(*)- sugestão -> instalar a versão developer e seguir os passos da apostila
	sp_configure -> openrowset (excel,vba... )
	objetos a serem criados:
	1 - coluna computada 
	2 - sequencia ( nova tabela do financeiro )
	3 - tipos de dados do usuario
*/
SELECT * FROM SYSTYPES WHERE NAME LIKE '%VALOR%'