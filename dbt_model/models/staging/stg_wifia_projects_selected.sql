SELECT 
  seq, 
  cast("fiscal year" as integer) as fiscal_year, 
  initcap(borrower) as borrower, 
  initcap(coalesce("project name", 'Not Informed')) as project_name,
  "loan  amount" as loan_amount_desc, 
  case when strpos("loan  amount", 'billion') = 0 then 
    cast(replace(replace("loan  amount",'$',''),' million','') as float) * 1000000 
  else 
    cast(replace(replace("loan  amount",'$',''),' billion','') as float) * 1000000000 
  end as loan_amount,       
  state, 
  initcap(coalesce("approval status", 'Not Informed')) as approval_status
FROM {{source('source', 'wifia_projects_selected')}}
