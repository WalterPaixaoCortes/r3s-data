

select distinct 'INFORMAL' as enf_type,
       trim(enf.PGM_SYS_ID) as prg_id,
       trim(enf.REGISTRY_ID) as fac_id,
       trim(enf.AGENCY) as enf_agency,
       trim(enf.ACTIVITY_TYPE_CODE) as activity_type_code,
       trim(enf.ENF_TYPE_CODE) as enf_type_code,
       trim(enf.ENF_TYPE_DESC) as enf_type_desc,
       case when coalesce(enf.achieved_date,'') = '' then null
       else substr(enf.achieved_date,7) || '-' || substr(enf.achieved_date,1,2) || '-' || substr(enf.achieved_date,4,2) || ' 00:00:00'
  end as enf_achieved_date,
       trim(enf.ENF_IDENTIFIER) as enf_identifier,
       trim(enf.STATUTE) as enf_statute,
       now() as load_date
  from "postgres"."source"."epa_informal_enforcement_actions" enf