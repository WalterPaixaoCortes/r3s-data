

select
  distinct case_number,
  violation_type_code,
  violation_type_desc
from "postgres"."source"."case_violations"