SELECT distinct seq, 
       trim(substr(initcap(coalesce(borrower, 'Not Informed')),1,strpos(initcap(coalesce(borrower, 'Not Informed')), '(pdf)'))) as borrower, 
       initcap(coalesce("project name", 'Not Informed')) as project_name, 
       state, 
       case when coalesce("close date",'') = '' then null
       else substr("close date",7) || '-' || substr("close date",1,2) || '-' || substr("close date",4,2) || ' 00:00:00'
  end as close_date, 
       cast(replace(replace("loan amount",'$',''),' million','') as float) * 1000000 as loan_amount,       
       initcap(coalesce("environmental compliance", 'Not Informed')) as environmental_compliance
FROM "postgres"."source"."wifia_loans_closed"