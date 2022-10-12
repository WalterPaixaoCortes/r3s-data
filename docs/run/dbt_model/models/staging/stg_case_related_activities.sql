

  create  table "postgres"."staging"."stg_case_related_activities__dbt_tmp"
  as (
    

select
  case_number,
  activity_status_date,
  activity_type_code
from "postgres"."source"."case_related_activities"
  );