{{ config(
    indexes=[
      {'columns': ['case_number'], 'type': 'hash'},
    ]
)}}

SELECT distinct case_number,
       comp_action_category_type_desc
  FROM {{source('source','case_enforcement_conclusion_complying_actions')}}
