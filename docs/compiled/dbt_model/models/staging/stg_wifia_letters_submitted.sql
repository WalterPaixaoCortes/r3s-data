select
  seq,
  cast("fiscal year" as integer) as fiscal_year,
  initcap("prospective borrower") as borrower,
  state,
  "project description" as project_desc
from "postgres"."source"."wifia_letters_submitted"