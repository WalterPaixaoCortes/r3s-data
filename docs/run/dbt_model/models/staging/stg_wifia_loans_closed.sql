

  create  table "postgres"."staging"."stg_wifia_loans_closed__dbt_tmp"
  as (
    SELECT seq, 
       borrower, 
       "project name" as project_name, 
       state, 
       "close date" as close_date, 
       "loan amount" as loan_amount, 
       "environmental compliance" as environmental_compliance
FROM "postgres"."source"."wifia_loans_closed"
  );