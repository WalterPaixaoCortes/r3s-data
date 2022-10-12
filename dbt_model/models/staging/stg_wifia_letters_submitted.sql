select
  seq,
  "fiscal year" as fiscal_year,
  "prospective borrower" as borrower,
  state,
  "project description" as project_desc
from {{source( 'source', 'wifia_letters_submitted')}}