
  
    

  create  table "postgres"."staging"."stg_wifia_projects_selected__dbt_tmp"
  as (
    SELECT distinct
  seq, 
  cast("fiscal year" as integer) as fiscal_year,
  case when strpos(initcap(coalesce(borrower, 'Not Informed')), '(pdf)') = 0 then
    trim(initcap(coalesce(borrower, 'Not Informed'))) 
  else
    trim(substr(initcap(coalesce(borrower, 'Not Informed')),1,strpos(initcap(coalesce(borrower, 'Not Informed')), '(pdf)'))) 
  end as borrower, 
  initcap(coalesce("project name", 'Not Informed')) as project_name,
  "loan  amount" as loan_amount_desc, 
  case when strpos("loan  amount", 'billion') = 0 then 
    cast(replace(replace("loan  amount",'$',''),' million','') as float) * 1000000 
  else 
    cast(replace(replace("loan  amount",'$',''),' billion','') as float) * 1000000000 
  end as loan_amount,       
  state, 
  case when strpos(initcap(coalesce("approval status", 'Not Informed')), ':') > 0 then  trim(substr(initcap(coalesce("approval status", 'Not Informed')),1,strpos(initcap(coalesce("approval status", 'Not Informed')), ':')-1)) 
  else initcap(coalesce("approval status", 'Not Informed'))
  end approval_status
FROM "postgres"."source"."wifia_projects_selected"
  );
  