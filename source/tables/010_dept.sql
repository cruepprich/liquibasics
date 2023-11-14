--liquibase formatted sql
--changeset crueppri:dept_create runOnChange:false

CREATE TABLE SCOTT.DEPT (
	DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
	DNAME VARCHAR2(14) ,
	LOC VARCHAR2(13)
) ;

--rollback DROP TABLE SCOTT.DEPT


--changeset crueppri:dept_add_foo runOnChange:false

ALTER TABLE SCOTT.DEPT ADD(
    FOO VARCHAR2(14)
) ;

--rollback ALTER TABLE SCOTT.DEPT DROP COLUMN FOO