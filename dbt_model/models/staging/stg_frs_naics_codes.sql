{{ config(
    indexes=[
      {'columns': ['fac_id'], 'type': 'hash'},
      {'columns': ['prg_id', 'prg_acronym', 'fac_id']}
    ]
)}}

select  
    trim(registry_id) as fac_id,
    trim(pgm_sys_id) as prg_id,
    trim(pgm_sys_acnrm) as prg_acronym,
    trim(naics_code) as prg_naics_code
from {{ source('source', 'frs_naics_codes')}}