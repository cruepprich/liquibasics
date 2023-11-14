var x varchar2(30);
exec :x := 'hi';
print :x
PROMPT Hello prompt
@source/custom/custom2.sql
insert into scott.bonus (ename,job,sal,comm) values ('MILLER','FOO',123,456);