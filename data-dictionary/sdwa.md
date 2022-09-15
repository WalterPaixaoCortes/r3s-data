# SDWA

The Enforcement and Compliance History Online (ECHO) system incorporates Public Water Systems data from EPA's Safe Drinking Water Information System (SDWIS) database. These downloads provide national data for key EPA/State Drinking Water Dashboard metrics, which are some of the SDWIS data elements most commonly used in the enforcement and compliance program.

## Data elements

### Events Milestones (SDWA_EVENTS_MILESTONES.csv)

| Element               | Data Type | Length |
| --------------------- | --------- | ------ |
| PWSID                 | Char      | 9      |
| SUBMISSIONYEARQUARTER | Char      | 7      |
| EVENT_SCHEDULE_ID     | Char      | 20     |
| EVENT_END_DATE        | Date      |        |
| EVENT_ACTUAL_DATE     | Date      |        |
| EVENT_COMMENTS_TEXT   | Char      | 2000   |
| EVENT_MILESTONE_CODE  | Char      | 4      |
| EVENT_REASON_CODE     | Char      | 4      |
| FIRST_REPORTED_DATE   | Date      |        |
| LAST_REPORTED_DATE    | Date      |        |

### Facilities (SDWA_FACILITIES.csv)

| Element                    | Data Type | Length |
| -------------------------- | --------- | ------ |
| PWSID                      | Char      | 9      |
| SUBMISSIONYEARQUARTER      | Char      | 7      |
| FACILITY_ID                | Char      | 12     |
| FACILITY_NAME              | Char      | 100    |
| STATE_FACILITY_ID          | Char      | 40     |
| FACILITY_ACTIVITY_CODE     | Char      | 1      |
| FACILITY_DEACTIVATION_DATE | Date      |        |
| FACILITY_TYPE_CODE         | Char      | 4      |
| SUBMISSION_STATUS_CODE     | Char      | 4      |
| IS_SOURCE_IND              | Char      | 1      |
| WATER_TYPE_CODE            | Char      | 4      |
| AVAILABILITY_CODE          | Char      | 4      |
| SELLER_TREATMENT_CODE      | Char      | 4      |
| SELLER_PWSID               | Char      | 9      |
| SELLER_PWS_NAME            | Char      | 100    |
| FILTRATION_STATUS_CODE     | Char      | 4      |
| IS_SOURCE_TREATED_IND      | Char      | 1      |
| FIRST_REPORTED_DATE        | Date      |        |
| LAST_REPORTED_DATE         | Date      |        |

### LCR (SDWA_LCR_Samples.csv)

| Element                    | Data Type | Length |
| -------------------------- | --------- | ------ |
| PWSID                      | Char      | 9      |
| SUBMISSIONYEARQUARTER      | Char      | 7      |
| SAMPLE_ID                  | Char      | 20     |
| SAMPLING_END_DATE          | Date      |        |
| SAMPLING_START_DATE        | Date      |        |
| RECONCILIATION_ID          | Char      | 40     |
| SAMPLE_FIRST_REPORTED_DATE | Date      |        |
| SAMPLE_LAST_REPORTED_DATE  | Date      |        |
| SAR_ID                     | Num       | 9      |
| CONTAMINANT_CODE           | Char      | 4      |
| RESULT_SIGN_CODE           | Char      | 1      |
| SAMPLE_MEASURE             | Num       |        |
| UNIT_OF_MEASURE            | Char      | 4      |
| SAR_FIRST_REPORTED_DATE    | Date      |        |
| SAR_LAST_REPORTED_DATE     | Date      |        |

### PN Violations (SDWA_PN_VIOLATION_ASSOC.csv)

| Element               | Data Type | Length |
| --------------------- | --------- | ------ |
| PWSID                 | Char      | 9      |
| SUBMISSIONYEARQUARTER | Char      | 7      |
| PN_VIOLATION_ID       | Char      | 20     |
| COMPL_PER_END_DATE    | Date      |        |
| VIOLATION_CODE        | Char      | 4      |
| CONTAMINATION_CODE    | Char      | 4      |
| FIRST_REPORTED_DATE   | Date      |        |
| LAST_REPORTED_DATE    | Date      |        |
| RELATED_VIOLATION_ID  | Char      | 20     |
| COMPL_PER_BEGIN_DATE  | DATE      |        |

### Public Water System (SDWA_PUB_WATER_SYSTEMS.csv)

| Element                        | Data Type | Length |
| ------------------------------ | --------- | ------ |
| PWSID                          | Char      | 9      |
| SUBMISSIONYEARQUARTER          | Char      | 7      |
| PWS_NAME                       | Char      | 100    |
| PRIMACY_AGENCY_CODE            | Char      | 2      |
| EPA_REGION                     | Char      | 2      |
| PWS_ACTIVITY_CODE              | Char      | 1      |
| SEASON_BEGIN_DATE              | Char      | 5      |
| SEASON_END_DATE                | Char      | 5      |
| PWS_DEACTIVATION_DATE          | Date      | 7      |
| PWS_TYPE_CODE                  | Char      | 6      |
| DBPR_SCHEDULE_CAT_CODE         | Char      | 6      |
| CDS_ID                         | Char      | 100    |
| GW_SW_CODE                     | Char      | 2      |
| LT2_SCHEDULE_CAT_CODE          | Char      | 6      |
| OWNER_TYPE_CODE                | Char      | 1      |
| POPULATION_SERVED_COUNT        | Num       |        |
| POP_CAT_2_CODE                 | Char      | 2      |
| POP_CAT_3_CODE                 | Char      | 2      |
| POP_CAT_4_CODE                 | Char      | 2      |
| POP_CAT_5_CODE                 | Char      | 2      |
| POP_CAT_11_CODE                | Char      | 2      |
| PRIMACY_TYPE                   | Char      | 20     |
| PRIMARY_SOURCE_CODE            | Char      | 4      |
| IS_GRANT_ELIGIBLE_IND          | Char      | 1      |
| IS_WHOLESALER_IND              | Char      | 1      |
| IS_SCHOOL_OR_DAYCARE_IND       | Char      | 1      |
| SERVICE_CONNECTIONS_COUNT      | Num       |        |
| SUBMISSION_STATUS_CODE         | Char      | 1      |
| ORG_NAME                       | Char      | 100    |
| ADMIN_NAME                     | Char      | 100    |
| EMAIL_ADDR                     | Char      | 100    |
| PHONE_NUMBER                   | Char      | 15     |
| PHONE_EXT_NUMBER               | Char      | 5      |
| FAX_NUMBER                     | Char      | 15     |
| ALT_PHONE_NUMBER               | Char      | 15     |
| ADDRESS_LINE1                  | Char      | 200    |
| ADDRESS_LINE2                  | Char      | 200    |
| CITY_NAME                      | Char      | 40     |
| ZIP_CODE                       | Char      | 14     |
| COUNTRY_CODE                   | Char      | 2      |
| FIRST_REPORTED_DATE            | Date      | 7      |
| LAST_REPORTED_DATE             | Date      | 7      |
| STATE_CODE                     | Char      | 2      |
| SOURCE_WATER_PROTECTION_CODE   | Char      | 2      |
| SOURCE_PROTECTION_BEGIN_DATE   | Date      | 7      |
| OUTSTANDING_PERFORMER          | Char      | 2      |
| OUTSTANDING_PERFORM_BEGIN_DATE | Date      | 7      |
| REDUCED_RTCR_MONITORING        | Char      | 20     |
| REDUCED_MONITORING_BEGIN_DATE  | Date      | 7      |
| REDUCED_MONITORING_END_DATE    | Date      | 7      |
| SEASONAL_STARTUP_SYSTEM        | Char      | 40     |

### Geographic Areas (SDWA_GEOGRAPHIC_AREAS.csv)

| Element               | Data Type | Length |
| --------------------- | --------- | ------ |
| SUBMISSIONYEARQUARTER | Char      | 7      |
| PWSID                 | Char      | 9      |
| GEO_ID                | Char      | 20     |
| AREA_TYPE_CODE        | Char      | 4      |
| TRIBAL_CODE           | Char      | 10     |
| STATE_SERVED          | Char      | 4      |
| ANSI_ENTITY_CODE      | Char      | 4      |
| ZIP_CODE_SERVED       | Char      | 5      |
| CITY_SERVED           | Char      | 40     |
| COUNTY_SERVED         | Char      | 40     |
| LAST_REPORTED_DATE    | Date      |        |

### ANSI (SDWA_REF_ANSI_AREAS.csv)

| Element          | Data Type | Length |
| ---------------- | --------- | ------ |
| ANSI_STATE_CODE  | Char      | 2      |
| ANSI_ENTITY_CODE | Char      | 3      |
| ANSI_NAME        | Char      | 40     |
| STATE_CODE       | Char      | 2      |

### Reference Codes (SDWA_REF_CODE_VALUES.csv)

| Element           | Data Type | Length |
| ----------------- | --------- | ------ |
| VALUE_TYPE        | Char      | 40     |
| VALUE_CODE        | Char      | 40     |
| VALUE_DESCRIPTION | Char      | 250    |

### Service Areas (SDWA_SERVICE_AREAS.csv)

| Element                      | Data Type | Length |
| ---------------------------- | --------- | ------ |
| PWSID                        | Char      | 9      |
| SUBMISSIONYEARQUARTER        | Char      | 7      |
| SERVICE_AREA_TYPE_CODE       | Char      | 4      |
| IS_PRIMARY_SERVICE_AREA_CODE | Char      | 1      |
| FIRST_REPORTED_DATE          | Date      |        |
| LAST_REPORTED_DATE           | Date      |        |

### Site Visits (SDWA_SITE_VISITS.csv)

| Element                       | Data Type | Length |
| ----------------------------- | --------- | ------ |
| PWSID                         | Char      | 9      |
| SUBMISSIONYEARQUARTER         | Char      | 7      |
| VISIT_ID                      | Char      | 20     |
| VISIT_DATE                    | Date      | 7      |
| AGENCY_TYPE_CODE              | Char      | 2      |
| VISIT_REASON_CODE             | Char      | 4      |
| MANAGEMENT_OPS_EVAL_CODE      | Char      | 1      |
| SOURCE_WATER_EVAL_CODE        | Char      | 1      |
| SECURITY_EVAL_CODE            | Char      | 1      |
| PUMPS_EVAL_CODE               | Char      | 1      |
| OTHER_EVAL_CODE               | Char      | 1      |
| COMPLIANCE_EVAL_CODE          | Char      | 1      |
| DATA_VERIFICATION_EVAL_CODE   | Char      | 1      |
| TREATMENT_EVAL_CODE           | Char      | 1      |
| FINISHED_WATER_STOR_EVAL_CODE | Char      | 1      |
| DISTRIBUTION_EVAL_CODE        | Char      | 1      |
| FINANCIAL_EVAL_CODE           | Char      | 1      |
| VISIT_COMMENTS                | Char      | 2000   |
| FIRST_REPORTED_DATE           | Date      | 7      |
| LAST_REPORTED_DATE            | Date      | 7      |

### Violations and Enforcement (SDWA_VIOLATIONS_ENFORCEMENT.csv)

| Element                      | Data Type | Length |
| ---------------------------- | --------- | ------ |
| PWSID                        | Char      | 9      |
| SUBMISSIONYEARQUARTER        | Char      | 7      |
| VIOLATION_ID                 | Char      | 20     |
| FACILITY_ID                  | Char      | 12     |
| COMPL_PER_BEGIN_DATE         | Date      |        |
| COMPL_PER_END_DATE           | Date      |        |
| VIOLATION_CODE               | Char      | 4      |
| VIOLATION_CATEGORY_CODE      | Char      | 5      |
| IS_HEALTH_BASED_IND          | Char      | 1      |
| CONTAMINANT_CODE             | Char      | 4      |
| VIOL_MEASURE                 | Num       |        |
| UNIT_OF_MEASURE              | Char      | 9      |
| FEDERAL_MCL                  | Char      | 31     |
| STATE_MCL                    | Num       |        |
| IS_MAJOR_VIOL_IND            | Char      | 1      |
| SEVERITY_IND_CNT             | Num       |        |
| CALCULATED_RTC_DATE          | Date      |        |
| VIOLATION_STATUS             | Char      | 11     |
| PUBLIC_NOTIFICATION_TIER     | Num       |        |
| CALCULATED_PUB_NOTIF_TIER    | Num       |        |
| VIOL_ORIGINATOR_CODE         | Char      | 4      |
| SAMPLE_RESULT_ID             | Char      | 40     |
| CORRECTIVE_ACTION_ID         | Char      | 40     |
| RULE_CODE                    | Char      | 3      |
| RULE_GROUP_CODE              | Char      | 3      |
| RULE_FAMILY_CODE             | Char      | 3      |
| VIOL_FIRST_REPORTED_DATE     | Date      |        |
| VIOL_LAST_REPORTED_DATE      | Date      |        |
| ENFORCEMENT_ID               | Char      | 20     |
| ENFORCEMENT_DATE             | Date      |        |
| ENFORCEMENT_ACTION_TYPE_CODE | Char      | 4      |
| ENF_ACTION_CATEGORY          | Char      | 4000   |
| ENF_ORIGINATOR_CODE          | Char      | 4      |
| ENF_FIRST_REPORTED_DATE      | Date      |        |
| ENF_LAST_REPORTED_DATE       | Date      |        |
