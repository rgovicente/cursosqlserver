/*
	SINTAXE BASICA
	ALTER TABLE <>
	ADD CONSTRAINT PK<>
	PRIMARY KEY (<COLUNA>)
*/
ALTER TABLE CONTAS 
ADD CONSTRAINT PK_CONTAS PRIMARY KEY(ID_PEDIDO,ITEM)

SELECT * FROM SYSOBJECTS 
WHERE XTYPE LIKE 'PK%'