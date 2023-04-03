
SELECT * FROM TABELA_DE_VENDEDORES;

SELECT * FROM VENDEDORES;

UPDATE TABELA_DE_VENDEDORES SET DE_FERIAS = 0 WHERE MATRICULA IN ('00236','00237');

UPDATE TABELA_DE_VENDEDORES SET DE_FERIAS = 1 WHERE MATRICULA IN ('00235','00238');

SELECT A.MATRICULA, B.MATRICULA, A.NOME, A.FERIAS, B.DE_FERIAS
FROM VENDEDORES A INNER JOIN TABELA_DE_VENDEDORES B 
ON A.MATRICULA = SUBSTR(B.MATRICULA,3,3);

UPDATE VENDEDORES A INNER JOIN TABELA_DE_VENDEDORES B 
ON A.MATRICULA = SUBSTR(B.MATRICULA,3,3) SET A.FERIAS = B.DE_FERIAS;

--EXISTS

SELECT A.MATRICULA, B.MATRICULA, A.NOME, A.FERIAS, B.DE_FERIAS
FROM VENDEDORES A INNER JOIN TABELA_DE_VENDEDORES B 
ON A.MATRICULA = SUBSTR(B.MATRICULA,3,3);

SELECT A.MATRICULA, A.NOME, A.FERIAS
FROM VENDEDORES A WHERE EXISTS (SELECT 1 FROM TABELA_DE_VENDEDORES B 
WHERE A.MATRICULA = SUBSTR(B.MATRICULA,3,3));

INSERT INTO TABELA_DE_VENDEDORES (MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS, BAIRRO)
VALUES ('00239','Jose',0.12,TO_DATE('2018-01-01','YYYY-MM-DD'), 1, 'Tijuca');

SELECT * FROM TABELA_DE_VENDEDORES;

UPDATE VENDEDORES A SET A.FERIAS = 
(SELECT B.DE_FERIAS FROM TABELA_DE_VENDEDORES B
WHERE A.MATRICULA = SUBSTR(B.MATRICULA,3,3))
WHERE  EXISTS (SELECT 1 FROM TABELA_DE_VENDEDORES B 
WHERE A.MATRICULA = SUBSTR(B.MATRICULA,3,3));

SELECT A.MATRICULA, B.MATRICULA, A.NOME, A.FERIAS, B.DE_FERIAS
FROM VENDEDORES A INNER JOIN TABELA_DE_VENDEDORES B 
ON A.MATRICULA = SUBSTR(B.MATRICULA,3,3);

UPDATE TABELA_DE_VENDEDORES SET DE_FERIAS = 1 WHERE MATRICULA IN ('00236','00237');





