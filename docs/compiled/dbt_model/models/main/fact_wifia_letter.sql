select wls.fiscal_year,
       coalesce(wls.borrower, 'Not Informed') as borrower,
       wls.state,
       wls.project_desc,
       wps.project_name,
       wps.loan_amount as loan_amount_requested,
       wps.approval_status,
       wlc.close_date,
       wlc.loan_amount as closed_loan_amount,
       wlc.environmental_compliance
from staging."stg_wifia_letters_submitted" wls
left join staging."stg_wifia_projects_selected" wps 
   on wls.borrower  = wps.borrower 
   and wls.fiscal_year = wps.fiscal_year
left join staging."stg_wifia_loans_closed" wlc 
	on wps.borrower = wlc.borrower 
	and wps.project_name = wlc.project_name