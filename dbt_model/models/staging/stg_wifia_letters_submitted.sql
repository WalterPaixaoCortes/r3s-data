select
  seq,
  cast("fiscal year" as integer) as fiscal_year,
  {{ capitalize('"prospective borrower"')}} as borrower,
  state,
  "project description" as project_desc
from {{source( 'source', 'wifia_letters_submitted')}}