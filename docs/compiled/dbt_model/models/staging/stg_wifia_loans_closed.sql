SELECT seq, 
       coalesce(borrower, 'Not Informed') as borrower, 
       coalesce("project name", 'Not Informed') as project_name, 
       state, 
       case when coalesce("close date",'') = '' then null
       else substr("close date",7) || '-' || substr("close date",1,2) || '-' || substr("close date",4,2) || ' 00:00:00'
  end as close_date, 
       cast(replace(replace("loan amount",'$',''),' million','') as float) * 1000000 as loan_amount,       
       coalesce("environmental compliance", 'Not Informed') as environmental_compliance
FROM source."wifia_loans_closed"