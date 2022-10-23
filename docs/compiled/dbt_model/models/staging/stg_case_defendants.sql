

select
  case_number,
  coalesce(defendant_name, 'Not Informed') as defendant_name
from source."case_defendants"