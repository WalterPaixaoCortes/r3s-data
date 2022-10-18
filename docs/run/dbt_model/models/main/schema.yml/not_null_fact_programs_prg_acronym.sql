select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select prg_acronym
from "postgres"."main"."fact_programs"
where prg_acronym is null



      
    ) dbt_internal_test