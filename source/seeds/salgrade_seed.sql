--liquibase formatted sql

--changeset crueppri:salgrade_seed  stripComments:false runOnChange:true endDelimiter:/
BEGIN
    DELETE FROM SCOTT.SALGRADE;
    INSERT INTO SCOTT.SALGRADE VALUES (1,700,1200);
    INSERT INTO SCOTT.SALGRADE VALUES (2,1201,1400);
    INSERT INTO SCOTT.SALGRADE VALUES (3,1401,2000);
    INSERT INTO SCOTT.SALGRADE VALUES (4,2001,3000);
    INSERT INTO SCOTT.SALGRADE VALUES (5,3001,9999);
END;
/
--rollback not required
