
  
    create  table staging."stg_case_relief_sought"
      as
        

select
  case_number,
  relief_desc
from source."case_relief_sought"

  