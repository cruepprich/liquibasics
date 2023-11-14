select e.ename, e.job, s.grade, d.dname, d.loc
  from scott.emp e
  join scott.dept d
    on e.deptno = d.deptno
  join scott.salgrade s
    on e.sal between s.losal and s.hisal;