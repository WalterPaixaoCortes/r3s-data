SELECT prg.prg_acronym,
      prg.prg_id,
      fac.fac_id,
      fac.fac_name,
      fac.fac_city,
      coalesce( fac.fac_state, 'NA' ) AS fac_state, 
      coalesce( st.state_name, 'NA' ) AS state_name, 
      fac.fac_zipcode, 
      fac.fac_epa_region, 
      coalesce( nai.prg_naics_code, 'NA' ) AS naics_code, 
      coalesce( naid.naics_desc, 'NA' ) AS naics_desc
FROM "postgres"."staging"."stg_frs_programs" prg
INNER JOIN "postgres"."staging"."stg_frs_facilities" fac
    ON prg.fac_id = fac.fac_id
INNER JOIN "postgres"."staging"."stg_frs_naics_codes" nai
    ON prg.prg_id = nai.prg_id
        AND prg.prg_acronym = nai.prg_acronym
        AND prg.fac_id = nai.fac_id
LEFT JOIN "postgres"."seed_data"."src_states" st
    ON fac.fac_state = st.state_code
LEFT JOIN "postgres"."staging"."stg_naics_codes" naid
    ON nai.prg_naics_code = naid.naics_code