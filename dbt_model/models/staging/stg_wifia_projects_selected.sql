SELECT distinct
  seq, 
  cast("fiscal year" as integer) as fiscal_year,
  case when strpos({{capitalize('borrower')}}, '(pdf)') = 0 then
    trim({{capitalize('borrower')}}) 
  else
    trim(substr({{capitalize('borrower')}},1,strpos({{capitalize('borrower')}}, '(pdf)'))) 
  end as borrower, 
  {{capitalize('"project name"')}} as project_name,
  "loan  amount" as loan_amount_desc, 
  {{amount_to_float('"loan  amount"')}} as loan_amount,       
  state, 
  case when strpos({{capitalize('"approval status"')}}, ':') > 0 then  trim(substr({{capitalize('"approval status"')}},1,strpos({{capitalize('"approval status"')}}, ':')-1)) 
  else {{capitalize('"approval status"')}}
  end approval_status
FROM {{source('source', 'wifia_projects_selected')}}
