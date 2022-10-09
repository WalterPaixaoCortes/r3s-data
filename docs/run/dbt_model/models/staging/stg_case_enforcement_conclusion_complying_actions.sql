create  table staging."stg_case_enforcement_conclusion_complying_actions"
      as
        SELECT case_number,
       comp_action_category_type_desc
  FROM source."case_enforcement_conclusion_complying_actions"
