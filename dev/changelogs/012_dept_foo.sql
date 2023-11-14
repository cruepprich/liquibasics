--liquibase formatted sql
--changeset crueppri:dept_add_foo runOnChange:false

ALTER TABLE SCOTT.DEPT ADD(
    FOO VARCHAR2(14)
) ;

--rollback ALTER TABLE SCOTT.DEPT DROP COLUMN FOO