{{ config(
    indexes=[
      {'columns': ['fac_id'], 'type': 'hash'},
      {'columns': ['prg_id', 'prg_acronym', 'fac_id']}
    ]
)}}

SELECT distinct
  trim(prg.pgm_sys_id) as prg_id,
  trim(prg.registry_id) as fac_id,
  trim(prg.pgm_sys_acrnm) as prg_acronym,
  trim(prg.primary_name) as prg_primary_name,
  trim(prg.city_name) as prg_city_name,
  trim(prg.county_name) as prg_county_name,
  trim(prg.state_name) as prg_state_name,
  trim(prg.country_name) as prg_country_name,
  trim(prg.postal_code) as prg_zipcode,
  {{current_timestamp()}} AS load_date
FROM
  {{source('source', 'frs_program_links')}} prg