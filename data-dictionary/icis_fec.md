# ICIS-FE&C Data Elements

ICIS is a case activity tracking and management system for civil, judicial, and administrative federal EPA enforcement cases. Case information is supplied and updated by EPA’s Offices of Regional Counsel and Office of Civil Enforcement case attorneys. The basic structure of an ICIS FE&C record focuses on an enforcement case. It is assigned a case number and a case name which identifies the defendant (or principal defendant if more than one is named in the complaint). For administrative actions, the record includes the nature of the violation, statute(s) involved, and milestone dates (e.g., the date the order was issued). Judicial actions contain information similar to that for administrative actions, but include more detailed milestone dates. ECHO contains a subset of the ICIS data which includes:

General Case Information - Case Number, Case Name, etc.
Violation Information - Law/Section, Violation Date, etc.
Defendant Name(s)
Milestone Dates - Referred to DOJ, Filed, Concluded, etc.
Penalty Amounts - Fines, Supplemental Environmental Projects (SEPs), etc.
ICIS tracks enforcement actions taken against companies or individuals. Therefore, the ICIS case name may not exactly correspond to the facility name for ICIS records linked via FRS to facility records from other program office data systems.

If you need more details, please check [here](https://echo.epa.gov/tools/data-downloads/icis-fec-download-summary).

## Data Elements

### Case Identifiers

| Element Name                   | Data Type | Length | Repeating Data |
| ------------------------------ | --------- | ------ | -------------- |
| ACTIVITY_ID                    | Num       |        |                |
| ACTIVITY_NAME                  | Char      | 100    |                |
| STATE_CODE                     | Char      | 2      |                |
| REGION_CODE                    | Char      | 2      | Y              |
| FISCAL_YEAR                    | Num       |        | Y              |
| CASE_NUMBER                    | Char      | 20     | Y              |
| CASE_NAME                      | Char      | 100    | Y              |
| ACTIVITY_TYPE_CODE             | Char      | 3      | Y              |
| ACTIVITY_TYPE_DESC             | Char      | 100    | Y              |
| ACTIVITY_STATUS_CODE           | Char      | 3      | Y              |
| ACTIVITY_STATUS_DESC           | Char      | 100    | Y              |
| ACTIVITY_STATUS_DATE           | Date      | 7      | Y              |
| LEAD                           | Char      | 5      | Y              |
| CASE_STATUS_DATE               | Date      | 7      | Y              |
| DOJ_DOCKET_NMBR                | Char      | 50     |                |
| ENF_OUTCOME_CODE               | Char      | 3      | Y              |
| ENF_OUTCOME_DESC               | Char      | 100    | Y              |
| TOTAL_PENALTY_ASSESSED_AMT     | Num       |        | Y              |
| TOTAL_COST_RECOVERY_AMT        | Num       |        | Y              |
| TOTAL_COM_ACTION_AMT           | Num       |        | Y              |
| HQ_DIVISION                    | Char      | 3      | Y              |
| BRANCH                         | Char      | 5      |                |
| VOLUNTARY_SELF_DISCLOSURE_FLAG | Char      | 1      | Y              |
| MULTIMEDIA_FLAG                | Char      | 1      | Y              |
| ENF_SUMMARY_TEXT               | Char      | 4000   |                |

### Violations

| Element Name        | Data Type | Length | Repeating Data |
| ------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID         | Num       |        |                |
| CASE_NUMBER         | Char      | 25     | Y              |
| VIOLATION_TYPE_CODE | Char      | 6      | Y              |
| VIOLATION_TYPE_DESC | Char      | 100    | Y              |
| RANK_ORDER          | Num       |        | Y              |

### Enforcement Types

| Element Name  | Data Type | Length | Repeating Data |
| ------------- | --------- | ------ | -------------- |
| ACTIVITY_ID   | Num       |        |                |
| CASE_NUMBER   | Char      | 25     | Y              |
| ENF_TYPE_CODE | Char      | 7      | Y              |
| ENF_TYPE_DESC | Char      | 100    | Y              |

### Relief Sought

| Element Name | Data Type | Length | Repeating Data |
| ------------ | --------- | ------ | -------------- |
| ACTIVITY_ID  | Num       |        |                |
| CASE_NUMBER  | Char      | 25     | Y              |
| RELIEF_CODE  | Char      | 3      | Y              |
| RELIEF_DESC  | Char      | 100    | Y              |

### Penalties

| Element Name                  | Data Type | Length | Repeating Data |
| ----------------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID                   | Num       |        |                |
| CASE_NUMBER                   | Char      | 25     | Y              |
| FED_PENALTY                   | Num       |        | Y              |
| ST_LCL_PENALTY                | Num       |        | Y              |
| TOTAL_SEP                     | Num       |        | Y              |
| COMPLIANCE_ACTION_COST        | Num       |        | Y              |
| FEDERAL_COST_RECOVERY_AMT     | Num       |        | Y              |
| STATE_LOCAL_COST_RECOVERY_AMT | Num       |        | Y              |
| PENALTY_COLLECTED_AMT         | Num       |        | Y              |

### Priorities

| Element Name  | Data Type | Length | Repeating Data |
| ------------- | --------- | ------ | -------------- |
| ACTIVITY_ID   | Num       |        |                |
| CASE_NUMBER   | Char      | 25     | Y              |
| PRIORITY_CODE | Num       |        | Y              |
| PRIORITY_DESC | Char      | 100    | Y              |
| FISCAL_YEAR   | Num       |        | Y              |

### Law Sections

| Element Name     | Data Type | Length | Repeating Data |
| ---------------- | --------- | ------ | -------------- |
| ACTIVITY_ID      | Num       |        |                |
| CASE_NUMBER      | Char      | 25     | Y              |
| RANK_ORDER       | Num       |        | Y              |
| STATUTE_CODE     | Char      | 6      | Y              |
| LAW_SECTION_CODE | Char      | 15     | Y              |
| LAW_SECTION_DESC | Char      | 100    | Y              |

### Facilities in Case

| Element Name       | Data Type | Length | Repeating Data |
| ------------------ | --------- | ------ | -------------- |
| ACTIVITY_ID        | Num       |        |                |
| CASE_NUMBER        | Char      | 25     | Y              |
| REGISTRY_ID        | Char      | 50     | Y              |
| FACILITY_NAME      | Char      | 80     | Y              |
| LOCATION_ADDRESS   | Char      | 50     | Y              |
| CITY               | Char      | 60     | Y              |
| STATE_CODE         | Char      | 2      | Y              |
| ZIP                | Char      | 14     | Y              |
| PRIMARY_SIC_CODE   | Char      | 4      | Y              |
| PRIMARY_NAICS_CODE | Char      | 6      | Y              |

### Defendants

| Element Name             | Data Type | Length | Repeating Data |
| ------------------------ | --------- | ------ | -------------- |
| ACTIVITY_ID              | Num       |        |                |
| CASE_NUMBER              | Char      | 25     | Y              |
| DEFENDANT_NAME           | Char      | 50     | Y              |
| NAMED_IN_COMPLAINT_FLAG  | Char      | 1      | Y              |
| NAMED_IN_SETTLEMENT_FALG | Char      | 1      | Y              |

### Milestone Activities/Dates

| Element Name           | Data Type | Length | Repeating Data |
| ---------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID            | Num       |        |                |
| CASE_NUMBER            | Char      | 25     | Y              |
| SUB_ACTIVITY_TYPE_CODE | Char      | 5      | Y              |
| SUB_ACTIVITY_TYPE_DESC | Char      | 100    | Y              |
| ACTUAL_DATE            | Date      | 7      | Y              |

### Pollutants cited

| Element Name                   | Data Type | Length | Repeating Data |
| ------------------------------ | --------- | ------ | -------------- |
| ACTIVITY_ID                    | Num       |        |                |
| CASE_NUMBER                    | Char      | 25     | Y              |
| POLLUTANT_CODE                 | Num       |        | Y              |
| POLLUTANT_DESC                 | Char      | 2000   | Y              |
| CHEMICAL_ABSTRACT_SERVICE_NMBR | Char      | 9      | Y              |

### Programs

| Element Name | Data Type | Length | Repeating Data |
| ------------ | --------- | ------ | -------------- |
| ACTIVITY_ID  | Num       |        |                |
| CASE_NUMBER  | VarChar   | 25     | Y              |
| PROGRAM_CODE | VarChar   | 9      | Y              |
| PROGRAM_DESC | VarChar   | 100    | Y              |

### Regional Dockets

| Element Name         | Data Type | Length | Repeating Data |
| -------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID          | Num       |        |                |
| CASE_NUMBER          | Char      | 25     | Y              |
| REGIONAL_DOCKET_NMBR | Char      | 50     | Y              |

### Related Activities

| Element Name         | Data Type | Length | Repeating Data |
| -------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID          | Num       |        |                |
| CASE_NUMBER          | Char      | 25     | Y              |
| ACTIVITY_STATUS_DATE | Date      | 7      | Y              |
| ACTIVITY_TYPE_CODE   | Char      | 3      | Y              |
| ACTIVITY_TYPE_DESC   | Char      | 100    | Y              |

### Case Conclusions

| Element Name               | Data Type | Length | Repeating Data |
| -------------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID                | Num       |        |                |
| CASE_NUMBER                | Char      | 25     | Y              |
| ENF_CONCLUSION_ID          | Num       |        |                |
| ENF_CONCLUSION_NMBR        | Num       |        | Y              |
| ENF_CONCLUSION_ACTION_CODE | Char      | 3      | Y              |
| ENF_CONCLUSION_NAME        | Char      | 100    |                |
| SETTLEMENT_LODGED_DATE     | Date      | 7      | Y              |
| SETTLEMENT_ENTERED_DATE    | Date      | 7      | Y              |
| SETTLEMENT_FY              | Char      | 4      | Y              |
| PRIMARY_LAW                | Char      | 55     | Y              |
| REGION_CODE                | Char      | 2      | Y              |
| ACTIVITY_TYPE_CODE         | Char      | 3      | Y              |
| FED_PENALTY_ASSESSED_AMT   | Num       |        | Y              |
| STATE_LOCAL_PENALTY_AMT    | Num       |        | Y              |
| SEP_AMT                    | Num       |        | Y              |
| COMPLIANCE_ACTION_COST     | Num       |        | Y              |
| COST_RECOVERY_AWARDED_AMT  | Num       |        | Y              |

### Pollutant Reductions

| Element Name            | Data Type | Length | Repeating Data |
| ----------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID             | Num       |        |                |
| CASE_NUMBER             | Char      | 25     | Y              |
| ENF_CONCLUSION_ID       | Num       |        | Y              |
| COMP_ACTION_ID          | Char      | 41     | Y              |
| ENVIRONMENTAL_IMPACT_ID | Num       |        | Y              |
| SEP_ID                  | Char      | 41     | Y              |
| POLLUTANT_CODE          | Char      |        | Y              |
| POLLUTANT_NAME          | Char      | 2000   | Y              |
| AVERAGE_ANNUAL_VALUE    | Num       |        | Y              |
| POLLUTANT_UNIT_CODE     | Char      | 7      | Y              |
| MEDIA_CODE              | Char      | 3      | Y              |
| MEDIA_DESC              | Char      | 100    | Y              |
| SEP_OR_COMP_FLAG        | Char      | 1      | Y              |

### Complying Actions

| Element Name                   | Data Type | Length | Repeating Data |
| ------------------------------ | --------- | ------ | -------------- |
| ACTIVITY_ID                    | Num       |        |                |
| CASE_NUMBER                    | Char      | 25     | Y              |
| ENF_CONCLUSION_ID              | Num       |        | Y              |
| COMP_ACTION_ID                 | Num       |        | Y              |
| COMP_ACTION_DESCRIPTION        | Char      | 4000   | Y              |
| COMP_ACTION_TYPE_CODE          | Char      | 3      | Y              |
| COMP_ACTION_TYPE_DESC          | Char      | 100    | Y              |
| COMP_ACTION_CATEGORY_TYPE_DESC | Char      | 100    | Y              |

### Enforcement Conclusions Facilities

| Element Name              | Data Type | Length | Repeating Data |
| ------------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID               | Num       |        |                |
| CASE_NUMBER               | Char      | 25     | Y              |
| ENF_CONCLUSION_ID         | Num       |        | Y              |
| ICIS_FACILITY_INTEREST_ID | Num       |        | Y              |
| FACILITY_UIN              | Char      | 12     | Y              |
| FACILITY_NAME             | Char      | 80     | Y              |
| FACILITY_CITY             | Char      | 60     | Y              |
| FACILITY_STATE            | Char      | 2      | Y              |
| FACILITY_ZIP              | Char      | 14     | Y              |

### SEP Description

| Element Name      | Data Type | Length | Repeating Data |
| ----------------- | --------- | ------ | -------------- |
| ACTIVITY_ID       | Num       |        |                |
| CASE_NUMBER       | Char      | 25     | Y              |
| ENF_CONCLUSION_ID | Num       |        | Y              |
| SEP_CATEGORY_CODE | Char      | 5      | Y              |
| SEP_CATEGORY_DESC | Char      | 100    | Y              |
| SEP_TEXT          | Char      | 4000   | Y              |
| SEP_AMT           | Num       |        | Y              |

### Enforcement Conclusions Dollars

| Element Name            | Data Type | Length | Repeating Data |
| ----------------------- | --------- | ------ | -------------- |
| ACTIVITY_ID             | Num       |        |                |
| CASE_NUMBER             | Char      | 25     | Y              |
| ENF_CONCLUSION_ID       | Num       |        | Y              |
| STATE_LOCAL_PENALTY_AMT | Num       |        | Y              |
| COST_RECOVERY_AMT       | Num       |        | Y              |
| FED_PENALTY             | Num       |        | Y              |
| COMPLIANCE_ACTION_COST  | Num       |        | Y              |
| SEP_COST                | Num       |        | Y              |
| PENALTY_COLLECTED_AMT   | Num       |        |                |

### Informal Enforcement Actions

| Element Name       | Data Type | Length | Repeating Data |
| ------------------ | --------- | ------ | -------------- |
| PGM_SYS_ID         | Char      | 30     |                |
| REGISTRY_ID        | Char      | 12     |                |
| AGENCY             | Char      | 5      | Y              |
| ACTIVITY_TYPE_CODE | Char      | 3      | Y              |
| ENF_TYPE_CODE      | Char      | 7      | Y              |
| ENF_TYPE_DESC      | Char      | 100    | Y              |
| ACHIEVED_DATE      | Date      |        | Y              |
| ENF_IDENTIFIER     | Char      | 25     | Y              |
| STATUTE            | Char      | 6      | Y              |

### ICIS EPA Inspections

| Element Name              | Data Type | Length | Repeating Data |
| ------------------------- | --------- | ------ | -------------- |
| REGISTRY_ID               | Char      | 12     | Y              |
| PGM_SYS_ACRNM             | Char      | 20     | Y              |
| PGM_SYS_ID                | Char      | 30     | Y              |
| FACILITY_NAME             | Char      | 80     | Y              |
| EPA_REGION_CODE           | Char      | 2      | Y              |
| ACTIVITY_ID1              | Num       |        | Y              |
| ACTIVITY_TYPE_CODE        | Char      | 3      | Y              |
| ACTIVITY_TYPE_DESC        | Char      | 100    | Y              |
| COMP_MONITOR_UID          | Char      | 25     | Y              |
| COMP_MONITOR_TYPES        | Char      | 4000   | Y              |
| STATUTE_CODE              | Char      | 6      | Y              |
| LAW_SECTION_CODE          | Char      | 15     | Y              |
| ACTUAL_BEGIN_DATE         | Date      |        | Y              |
| ACTUAL_END_DATE           | Date      |        | Y              |
| AGENCY                    | Char      | 5      | Y              |
| COMP_MONITOR_AGENCY_TYPES | Char      | 4000   | Y              |
