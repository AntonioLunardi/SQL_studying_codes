
  CREATE TABLE "SYSTEM"."CLIENTES" 
   (	"CPF" VARCHAR2(11 BYTE), 
	"NOME" VARCHAR2(100 BYTE), 
	"ENDERECO" VARCHAR2(150 BYTE), 
	"BAIRRO" VARCHAR2(50 BYTE), 
	"CIDADE" VARCHAR2(50 BYTE), 
	"ESTADO" VARCHAR2(50 BYTE), 
	"CEP" VARCHAR2(8 BYTE), 
	"DATA_NASCIMENTO" DATE, 
	"IDADE" NUMBER(*,0), 
	"SEXO" VARCHAR2(1 BYTE), 
	"LIMITE_CREDITO" FLOAT(126), 
	"VOLUME_COMPRA" FLOAT(126), 
	"PRIMEIRA_COMPRA" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ITEMS_NOTAS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ITEMS_NOTAS" 
   (	"NUMERO" VARCHAR2(5 BYTE), 
	"CODIGO" VARCHAR2(10 BYTE), 
	"QUANTIDADE" NUMBER(*,0), 
	"PRECO" FLOAT(126)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table NOTAS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."NOTAS" 
   (	"NUMERO" VARCHAR2(5 BYTE), 
	"DATA_VENDA" DATE, 
	"CPF" VARCHAR2(11 BYTE), 
	"MATRICULA" VARCHAR2(5 BYTE), 
	"IMPOSTO" FLOAT(126)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUTOS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."PRODUTOS" 
   (	"CODIGO" VARCHAR2(10 BYTE), 
	"DESCRITOR" VARCHAR2(100 BYTE), 
	"SABOR" VARCHAR2(50 BYTE), 
	"TAMANHO" VARCHAR2(50 BYTE), 
	"EMBALAGEM" VARCHAR2(5 BYTE), 
	"PRECO_LISTA" FLOAT(126)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VENDEDORES
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."VENDEDORES" 
   (	"MATRICULA" VARCHAR2(5 BYTE), 
	"NOME" VARCHAR2(100 BYTE), 
	"BAIRRO" VARCHAR2(50 BYTE), 
	"COMISSAO" FLOAT(126), 
	"DATA_ADMISSAO" DATE, 
	"FERIAS" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."CLIENTES" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."CLIENTES" ADD CONSTRAINT "CLIENTES_PK" PRIMARY KEY ("CPF")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ITEMS_NOTAS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ITEMS_NOTAS" MODIFY ("NUMERO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS_NOTAS" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ITEMS_NOTAS" ADD PRIMARY KEY ("NUMERO", "CODIGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTAS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NOTAS" MODIFY ("NUMERO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."NOTAS" MODIFY ("CPF" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."NOTAS" MODIFY ("MATRICULA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."NOTAS" ADD PRIMARY KEY ("NUMERO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUTOS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."PRODUTOS" MODIFY ("CODIGO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."PRODUTOS" ADD PRIMARY KEY ("CODIGO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table VENDEDORES
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."VENDEDORES" MODIFY ("MATRICULA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."VENDEDORES" ADD PRIMARY KEY ("MATRICULA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ITEMS_NOTAS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ITEMS_NOTAS" ADD CONSTRAINT "FK_NOTAS" FOREIGN KEY ("NUMERO")
	  REFERENCES "SYSTEM"."NOTAS" ("NUMERO") ENABLE;
  ALTER TABLE "SYSTEM"."ITEMS_NOTAS" ADD CONSTRAINT "FK_PRODUTOS" FOREIGN KEY ("CODIGO")
	  REFERENCES "SYSTEM"."PRODUTOS" ("CODIGO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOTAS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."NOTAS" ADD CONSTRAINT "FK_CLIENTES" FOREIGN KEY ("CPF")
	  REFERENCES "SYSTEM"."CLIENTES" ("CPF") ENABLE;
  ALTER TABLE "SYSTEM"."NOTAS" ADD CONSTRAINT "FK_VENDEDORES" FOREIGN KEY ("MATRICULA")
	  REFERENCES "SYSTEM"."VENDEDORES" ("MATRICULA") ENABLE;
