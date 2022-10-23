
  
    create  table staging."stg_wifia_projects_selected"
      as
        SELECT 
  seq, 
  cast("fiscal year" as integer) as fiscal_year, 
  coalesce(borrower, 'Not Informed') as borrower, 
  coalesce("project name", 'Not Informed') as project_name,
  "loan  amount" as loan_amount_desc, 
  case when instr("loan  amount", 'billion') = 0 then 
    cast(replace(replace("loan  amount",'$',''),' million','') as float) * 1000000 
  else 
    cast(replace(replace("loan  amount",'$',''),' billion','') as float) * 1000000000 
  end as loan_amount,       
  state, 
  coalesce("approval status", 'Not Informed') as approval_status
FROM source."wifia_projects_selected"

  