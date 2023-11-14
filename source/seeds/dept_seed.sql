--liquibase formatted sql
--changeset crueppri:dept_seed runOnChange:true

TRUNCATE TABLE scott.dept;
INSERT INTO SCOTT.DEPT VALUES
	(10,'ACCOUNTING','NEW YORK');
INSERT INTO SCOTT.DEPT VALUES 
    (20,'RESEARCH','DALLAS');
INSERT INTO SCOTT.DEPT VALUES
	(30,'SALES','CHICAGO');
INSERT INTO SCOTT.DEPT VALUES
	(40,'OPERATIONS','BOSTON');

--rollback truncate table scott.dept