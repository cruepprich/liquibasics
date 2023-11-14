--liquibase formatted sql
--changeset crueppri:emp_create runOnChange:false
--preconditions onFail:MARK_RAN onError:HALT
--precondition-sql-check expectedResult:0 select count(1) from all_tables where upper(owner) = upper('SCOTT') and upper(table_name) = upper('EMP');

CREATE TABLE SCOTT.EMP (
    EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	ENAME VARCHAR2(10),
	JOB VARCHAR2(9),
	MGR NUMBER(4),
	HIREDATE DATE,
	SAL NUMBER(7,2),
	COMM NUMBER(7,2),
	DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES SCOTT.DEPT
);

--rollback DROP TABLE SCOTT.EMP