

  create  table "postgres"."staging"."stg_case_enforcement_conclusion_complying_actions__dbt_tmp"
  as (
    

SELECT case_number,
       comp_action_category_type_desc
  FROM "postgres"."source"."case_enforcement_conclusion_complying_actions"
  );