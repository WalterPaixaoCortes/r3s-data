

  create  table "postgres"."staging"."stg_wifia_projects_selected__dbt_tmp"
  as (
    SELECT 
  seq, 
  "fiscal year" as fiscal_year, 
  borrower, 
  "project name" as project_name, 
  "loan  amount" as loan_amount, 
  state, 
  "approval status" as approval_status
FROM "postgres"."source"."wifia_projects_selected"
  );