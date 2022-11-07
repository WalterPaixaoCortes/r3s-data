

select
  distinct case_number,
  enf_type_desc
from "postgres"."source"."case_enforcement_type"