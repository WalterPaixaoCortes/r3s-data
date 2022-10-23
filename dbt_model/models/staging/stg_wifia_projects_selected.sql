SELECT 
  seq, 
  cast("fiscal year" as integer) as fiscal_year, 
  {{capitalize('borrower')}} as borrower, 
  {{capitalize('"project name"')}} as project_name,
  "loan  amount" as loan_amount_desc, 
  {{amount_to_float('"loan  amount"')}} as loan_amount,       
  state, 
  {{capitalize('"approval status"')}} as approval_status
FROM {{source('source', 'wifia_projects_selected')}}
