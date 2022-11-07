select wls.fiscal_year,
       coalesce(wls.borrower, 'Not Informed') as borrower,
       wls.state,
       wls.project_desc,
       coalesce(wps.project_name, 'Not Submitted') as project_name,
       coalesce(wps.loan_amount, 0) as loan_amount_requested,
       wps.approval_status,
       wlc.close_date,
       wlc.loan_amount as closed_loan_amount,
       wlc.environmental_compliance,
       case when wps.approval_status = 'Invited to Apply' and wlc.loan_amount is null then 'Loan Rejected'
            when wps.approval_status like 'Closed%' then 'Loan Granted'
            when wps.approval_status = 'Application Received' then 'Loan Applied'
            else 'Letters of Interest' end as category       
from "postgres"."staging"."stg_wifia_letters_submitted" wls
left join "postgres"."staging"."stg_wifia_projects_selected" wps 
   on wls.borrower  = wps.borrower 
   and wls.fiscal_year = wps.fiscal_year
left join "postgres"."staging"."stg_wifia_loans_closed" wlc 
	on wps.borrower = wlc.borrower 
	and wps.project_name = wlc.project_name 

/*
select ls.fiscal_year, 
       ls.borrower, 
       ls.state, 
       ps.project_name, 
       ps.approval_status, 
       lc.close_date, 
       lc.loan_amount,
       case when ps.approval_status = 'Invited to Apply' and lc.loan_amount is null then 'Loan Rejected'
            when ps.approval_status like 'Closed%' then 'Loan Granted'
            when ps.approval_status = 'Application Received' then 'Loan Applied'
            else 'Letters of Interest' end as category
from stg_wifia_letters_submitted ls 
    left join stg_wifia_projects_selected ps
        on ls.fiscal_year = ps.fiscal_year and ls.borrower = ps.borrower and ls.state = ps.state
    left join stg_wifia_loans_closed lc
        on ps.borrower = lc.borrower and ps.state = lc.state and ps.project_name = lc.project_name       
*/