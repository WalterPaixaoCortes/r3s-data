

select
  case_number,
  initcap(coalesce(defendant_name, 'Not Informed')) as defendant_name
from "postgres"."source"."case_defendants"