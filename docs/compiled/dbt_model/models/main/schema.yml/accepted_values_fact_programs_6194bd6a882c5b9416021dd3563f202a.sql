
    
    

with all_values as (

    select
        fac_epa_region as value_field,
        count(*) as n_records

    from "postgres"."main"."fact_programs"
    group by fac_epa_region

)

select *
from all_values
where value_field not in (
    'Region 01','Region 02','Region 03','Region 04','Region 05','Region 06','Region 07','Region 08','Region 09','Region 10','Not Informed'
)


