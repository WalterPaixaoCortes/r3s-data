create  table staging."stg_case_related_activities"
      as
        select
  case_number,
  activity_status_date,
  activity_type_code
from source."case_related_activities"
