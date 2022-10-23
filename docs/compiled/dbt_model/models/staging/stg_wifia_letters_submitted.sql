select
  seq,
  cast("fiscal year" as integer) as fiscal_year,
  coalesce("prospective borrower", 'Not Informed') as borrower,
  state,
  "project description" as project_desc
from source."wifia_letters_submitted"