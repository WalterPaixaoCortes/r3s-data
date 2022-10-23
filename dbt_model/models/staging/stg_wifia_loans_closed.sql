SELECT seq, 
       {{capitalize('borrower')}} as borrower, 
       {{capitalize('"project name"')}} as project_name, 
       state, 
       {{ format_date('"close date"') }} as close_date, 
       cast(replace(replace("loan amount",'$',''),' million','') as float) * 1000000 as loan_amount,       
       {{capitalize('"environmental compliance"')}} as environmental_compliance
FROM {{source('source', 'wifia_loans_closed')}}

