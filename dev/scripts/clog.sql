select orderexecuted - 38 ordr,
       id,
      --  to_char(dateexecuted,'yyyymmdd hh24:mi') as dtexec,
       author,
       filename,
       substr(md5sum,1,6) md5sum
   from databasechangelog 
 where filename like 'source%' or filename = 'controller.xml'
order by dateexecuted;