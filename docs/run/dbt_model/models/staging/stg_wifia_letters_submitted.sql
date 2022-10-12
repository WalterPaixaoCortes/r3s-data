

  create  table "postgres"."staging"."stg_wifia_letters_submitted__dbt_tmp"
  as (
    select
  seq,
  "fiscal year" as fiscal_year,
  "prospective borrower" as borrower,
  state,
  "project description" as project_desc
from "postgres"."source"."wifia_letters_submitted"
  );