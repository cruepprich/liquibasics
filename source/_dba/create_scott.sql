--liquibase formatted sql
--changeset crueppri:create_scott runOnChange:false

create user scott identified by Tigers_rock_5tripes;

--rollback drop user scott cascade;


--changeset crueppri:default_tbs_scott runOnChange:false

alter user scott quota unlimited on data;
grant connect,resource to scott;

--rollback not required

