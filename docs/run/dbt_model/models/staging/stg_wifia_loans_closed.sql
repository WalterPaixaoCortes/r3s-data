
  
    

  create  table "postgres"."staging"."stg_wifia_loans_closed__dbt_tmp"
  as (
    SELECT seq, 
       initcap(borrower) as borrower, 
       initcap(coalesce("project name", 'Not Informed')) as project_name, 
       state, 
       "close date"::timestamp as close_date, 
       cast(replace(replace("loan amount",'$',''),' million','') as float) * 1000000 as loan_amount,       
       initcap(coalesce("environmental compliance", 'Not Informed')) as environmental_compliance
FROM "postgres"."source"."wifia_loans_closed"
  );
  