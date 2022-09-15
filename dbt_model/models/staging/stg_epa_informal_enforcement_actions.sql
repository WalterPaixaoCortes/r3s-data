select 'INFORMAL' as enf_type,
       trim(enf.PGM_SYS_ID) as prg_id,
       trim(enf.REGISTRY_ID) as fac_id,
       trim(enf.AGENCY) as enf_agency,
       trim(enf.ACTIVITY_TYPE_CODE) as activity_type_code,
       trim(enf.ENF_TYPE_CODE) as enf_type_code,
       trim(enf.ENF_TYPE_DESC) as enf_type_desc,
       {{format_date('enf.achieved_date')}} as enf_achieved_date,
       trim(enf.ENF_IDENTIFIER) as enf_identifier,
       trim(enf.STATUTE) as enf_statute,
       {{current_timestamp()}} as load_date
  from {{source('source', 'epa_informal_enforcement_actions')}} enf