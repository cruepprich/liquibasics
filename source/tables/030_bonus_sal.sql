--liquibase formatted sql
--changeset crueppri:bonus_create runOnChange:false

CREATE TABLE SCOTT.BONUS (
	ENAME VARCHAR2(10),
	JOB VARCHAR2(9),
	SAL NUMBER,
	COMM NUMBER
) ;

--rollback drop table scott.bonus



--changeset crueppri:salgrade_create runOnChange:false
CREATE TABLE SCOTT.SALGRADE (
    GRADE NUMBER,
	LOSAL NUMBER,
	HISAL NUMBER 
);

--rollback truncate table scott.salgrade