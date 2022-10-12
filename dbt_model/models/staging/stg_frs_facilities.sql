{{ config(
    indexes=[
      {'columns': ['fac_id'], 'type': 'hash'}
    ]
)}}

with raw_data as (
  select trim(registry_id) as fac_id
       , replace(trim(coalesce(fac_name, 'Not Informed')),'	','') as fac_name
       , coalesce(trim(fac_street),'Not Informed') as fac_street
       , coalesce(trim(fac_city), 'Not Informed') as fac_city
       , coalesce(trim(fac_state), 'Not Informed') as fac_state
       , trim(fac_zip) as fac_zipcode
       , coalesce(trim(fac_county), 'Not Informed') as fac_county
       , coalesce('Region ' || trim(fac_epa_region), 'Not Informed') as fac_epa_region
       , cast(latitude_measure as real) as fac_latitude
       , cast(longitude_measure as real) as fac_longitude
       , {{current_timestamp()}} as load_date
  from {{source('source', 'frs_facilities')}}
)

select *
from raw_data
