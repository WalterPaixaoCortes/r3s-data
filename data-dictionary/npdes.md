# Water National Pollutant Discharge Elimination System (NPDES) Data Elements

ICIS-NPDES is an information management system maintained by the Office of Compliance to track permit compliance and enforcement status of facilities regulated by the National Pollutant Discharge Elimination System (NPDES) under the Clean Water Act (CWA). ICIS-NPDES is designed to support the NPDES program at the state, regional, and national levels.

More details, click [here](https://echo.epa.gov/tools/data-downloads/icis-npdes-download-summary).

## Data Elements

### Facility (ICIS_FACILITIES.csv)

| Element Name              | Data Type | Length |
| ------------------------- | --------- | ------ |
| ICIS_FACILITY_INTEREST_ID | Num       | 22     |
| NPDES_ID                  | Char      | 30     |
| FACILITY_UIN              | Char      | 12     |
| FACILITY_TYPE_CODE        | Char      | 3      |
| FACILITY_NAME             | Char      | 80     |
| LOCATION_ADDRESS          | Char      | 50     |
| SUPPLEMENTAL_ADDRESS_TEXT | Char      | 50     |
| CITY                      | Char      | 60     |
| COUNTY_CODE               | Char      | 5      |
| STATE_CODE                | Char      | 2      |
| ZIP                       | Char      | 14     |
| GEOCODE_LATITUDE          | Char      | 10     |
| GEOCODE_LONGITUDE         | Char      | 11     |
| IMPAIRED_WATERS           | Char      | 20     |

### Permit (ICIS_PERMITS.csv) and Master General Permit (ICIS_MASTER_GENERAL_PERMITS.csv)

| lement Name                 | Data Type | Length |
| --------------------------- | --------- | ------ |
| ACTIVITY_ID                 | Num       | 22     |
| EXTERNAL_PERMIT_NMBR        | Char      | 9      |
| VERSION_NMBR                | Num       | 22     |
| FACILITY_TYPE_INDICATOR     | Char      | 10     |
| PERMIT_TYPE_CODE            | Char      | 3      |
| MAJOR_MINOR_STATUS_FLAG     | Char      | 1      |
| PERMIT_STATUS_CODE          | Char      | 3      |
| TOTAL_DESIGN_FLOW_NMBR      | Num       | 22     |
| ACTUAL_AVERAGE_FLOW_NMBR    | Num       | 22     |
| STATE_WATER_BODY            | Char      | 12     |
| STATE_WATER_BODY_NAME       | Char      | 50     |
| WBD_HUC12                   | Char      | 48     |
| PERMIT_NAME                 | Char      | 120    |
| AGENCY_TYPE_CODE            | Char      | 3      |
| ORIGINAL_ISSUE_DATE         | Date      | 7      |
| ISSUE_DATE                  | Date      | 7      |
| ISSUING_AGENCY              | Char      | 100    |
| EFFECTIVE_DATE              | Date      | 7      |
| EXPIRATION_DATE             | Date      | 7      |
| RETIREMENT_DATE             | Date      | 7      |
| TERMINATION_DATE            | Date      | 7      |
| PERMIT_COMP_STATUS_FLAG     | Char      | 1      |
| DMR_NON_RECEIPT_FLAG        | Char      | 1      |
| RNC_TRACKING_FLAG           | Char      | 1      |
| MASTER_EXTERNAL_PERMIT_NMBR | Char      | 9      |
| TMDL_INTERFACE_FLAG         | Char      | 1      |
| PRETREATMENT_INDICATOR_CODE | Char      | 3      |
| EDMR_AUTHORIZATION_FLAG     | Char      | 1      |

### Permit Components (NPDES_PERM_COMPONENTS.csv)

| Element Name         | Data Type | Length |
| -------------------- | --------- | ------ |
| EXTERNAL_PERMIT_NMBR | Char      | 9      |
| COMPONENT_TYPE_CODE  | Char      | 3      |
| COMPONENT_TYPE_DESC  | Char      | 100    |

### Permit Feature Coordinates (NPDES_PERM_FEATURE_COORDS.csv)

| Element Name         | Data Type | Length |
| -------------------- | --------- | ------ |
| EXTERNAL_PERMIT_NMBR | Char      | 9      |
| PERM_FEATURE_NMBR    | Char      | 4      |
| PERM_FEATURE_ID      | Num       |        |
| LATITUDE_MEASURE     | Num       | 10     |
| LONGITUDE_MEASURE    | Num       | 11     |

### NAICS Code (NPDES_NAICS.csv)

| Element Name           | Data Type | Length |
| ---------------------- | --------- | ------ |
| NPDES_ID               | Char      | 30     |
| NAICS_CODE             | Char      | 6      |
| NAICS_DESC             | Char      | 100    |
| PRIMARY_INDICATOR_FLAG | Char      | 1      |

### SIC Code (NPDES_SICS.csv)

| Element Name           | Data Type | Length |
| ---------------------- | --------- | ------ |
| NPDES_ID               | Char      | 30     |
| SIC_CODE               | Char      | 4      |
| SIC_DESC               | Char      | 100    |
| PRIMARY_INDICATOR_FLAG | Char      | 1      |

### Inspections (NPDES_INSPECTIONS.csv)

| Element Name           | Data Type | Length |
| ---------------------- | --------- | ------ |
| REGISTRY_ID            | Char      | 50     |
| NPDES_ID               | Char      | 30     |
| ACTIVITY_ID            | Num       | 22     |
| ACTIVITY_TYPE_CODE     | Char      | 3      |
| COMP_MONITOR_TYPE_CODE | Char      | 3      |
| COMP_MONITOR_TYPE_DESC | Char      | 100    |
| STATE_EPA_FLAG         | Char      | 1      |
| ACTUAL_END_DATE        | Date      | 7      |
| ACTUAL_BEGIN_DATE      | Date      | 7      |

### QNCR Historic Compliance (NPDES_QNCR_HISTORY.csv)

| Element Name | Data Type | Length |
| ------------ | --------- | ------ |
| NPDES_ID     | Char      | 9      |
| YEARQTR      | Char      | 5      |
| HLRNC        | Char      | 1      |
| NUME90Q      | Num       | 22     |
| NUMCVDT      | Num       | 22     |
| NUMSVCD      | Num       | 22     |
| NUMPSCH      | Num       | 22     |

### Permit Schedule Violations (NPDES_PS_VIOLATIONS.csv)

| Element Name           | Data Type | Length |
| ---------------------- | --------- | ------ |
| NPDES_ID               | Char      | 30     |
| NPDES_VIOLATION_ID     | Num       | 22     |
| PERM_SCHEDULE_EVENT_ID | Num       | 22     |
| VIOLATION_TYPE_CODE    | Char      | 1      |
| VIOLATION_CODE         | Char      | 5      |
| VIOLATION_DESC         | Char      | 100    |
| SCHEDULE_EVENT_CODE    | Char      | 5      |
| SCHEDULE_EVENT_DESC    | Char      | 100    |
| SCHEDULE_DATE          | Date      | 7      |
| RNC_DETECTION_CODE     | Char      | 3      |
| RNC_DETECTION_DESC     | Char      | 100    |
| RNC_DETECTION_DATE     | Date      | 7      |
| RNC_RESOLUTION_CODE    | Char      | 3      |
| RNC_RESOLUTION_DESC    | Char      | 100    |
| RNC_RESOLUTION_DATE    | Date      | 7      |
| ACTUAL_DATE            | Date      | 7      |
| REPORT_RECEIVED_DATE   | Date      | 7      |

### Compliance Schedule Violations (NPDES_CS_VIOLATIONS.csv)

| Element Name           | Data Type | Length |
| ---------------------- | --------- | ------ |
| NPDES_ID               | Char      | 30     |
| NPDES_VIOLATION_ID     | Num       | 22     |
| VIOLATION_TYPE_CODE    | Char      | 1      |
| COMP_SCHEDULE_EVENT_ID | Num       | 22     |
| COMP_SCHEDULE_NMBR     | Num       | 3      |
| VIOLATION_CODE         | Char      | 5      |
| VIOLATION_DESC         | Char      | 100    |
| SCHEDULE_EVENT_CODE    | Char      | 5      |
| SCHEDUE_EVENT_DESC     | Char      | 100    |
| SCHEDULE_DATE          | Date      | 7      |
| ACTUAL_DATE            | Date      | 7      |
| RNC_DETECTION_CODE     | Char      | 3      |
| RNC_DETECTION_DESC     | Char      | 100    |
| RNC_DETECTION_DATE     | Date      | 7      |
| RNC_RESOLUTION_CODE    | Char      | 3      |
| RNC_RESOLUTION_DESC    | Char      | 100    |
| RNC_RESOLUTION_DATE    | Date      | 7      |
| REPORT_RECEIVED_DATE   | Date      | 7      |

### Single Event Violations (NPDES_SE_VIOLATIONS.csv)

| Element Name                   | Data Type | Length |
| ------------------------------ | --------- | ------ |
| NPDES_ID                       | Char      | 9      |
| NPDES_VIOLATION_ID             | Num       | 22     |
| VIOLATION_TYPE_CODE            | Char      | 1      |
| VIOLATION_CODE                 | Char      | 5      |
| VIOLATION_DESC                 | Char      | 476    |
| SINGLE_EVENT_VIOLATION_DATE    | Date      | 7      |
| SINGLE_EVENT_END_DATE          | Date      | 7      |
| SINGLE_EVENT_VIOLATION_COMMENT | Char      | 4000   |
| SINGLE_EVENT_AGENCY_TYPE_CODE  | Char      | 3      |
| RNC_DETECTION_CODE             | Char      | 3      |
| RNC_DETECTION_DESC             | Char      | 100    |
| RNC_DETECTION_DATE             | Date      | 7      |
| RNC_RESOLUTION_CODE            | Char      | 3      |
| RNC_RESOLUTION_DESC            | Char      | 100    |
| RNC_RESOLUTION_DATE            | Date      | 7      |

### CWA Enforcement Actions (NPDES_FORMAL_ENFORCEMENT_ACTIONS.csv)

| Element Name             | Data Type | Length |
| ------------------------ | --------- | ------ |
| NPDES_ID                 | Char      | 30     |
| ENF_IDENTIFIER           | Char      | 25     |
| ACTIVITY_ID              | Num       | 22     |
| ACTIVITY_TYPE_CODE       | Char      | 3      |
| ENF_TYPE_CODE            | Char      | 7      |
| ENF_TYPE_DESC            | Char      | 100    |
| AGENCY                   | Char      | 5      |
| SETTLEMENT_ENTERED_DATE  | Date      | 7      |
| FED_PENALTY_ASSESSED_AMT | Num       | 22     |
| STATE_LOCAL_PENALTY_AMT  | Num       | 22     |

### CWA Informal Enforcement Actions (NPDES_INFORMAL_ENFORCEMENT_ACTIONS.csv)

| Element Name       | Data Type | Length |
| ------------------ | --------- | ------ |
| NPDES_ID           | Char      | 30     |
| REGISTRY_ID        | Char      | 50     |
| AGENCY             | Char      | 5      |
| ACTIVITY_ID        | Num       | 22     |
| ACTIVITY_TYPE_CODE | Char      | 3      |
| ACTIVITY_TYPE_DESC | Char      | 100    |
| ENF_TYPE_CODE      | Char      | 7      |
| ENF_TYPE_DESC      | Char      | 100    |
| ACHIEVED_DATE      | Date      | 7      |
| ENF_IDENTIFIER     | Char      | 25     |
| OFFICIAL_FLG       | Char      | 1      |

### Effluent Violations (NPDES_EFF_VIOLATIONS.csv)

| Element Name                 | Data Type | Length |
| ---------------------------- | --------- | ------ |
| NPDES_ID                     | Char      | 9      |
| VERSION_NMBR                 | Num       | 22     |
| ACTIVITY_ID                  | Num       | 22     |
| NPDES_VIOLATION_ID           | Num       | 22     |
| PERM_FEATURE_NMBR            | Char      | 30     |
| PERMIT_ACTIVITY_ID           | Num       | 22     |
| LIMIT_SET_DESIGNATOR         | Char      | 2      |
| MONITORING_LOCATION_CODE     | Char      | 3      |
| DMR_FORM_VALUE_ID            | Num       | 22     |
| DMR_VALUE_NMBR               | Num       | 22     |
| DMR_VALUE_ID                 | Num       | 22     |
| DMR_PARAMETER_ID             | Num       | 22     |
| NODI_CODE                    | Char      | 3      |
| ADJUSTED_DMR_VALUE_NMBR      | Num       | 22     |
| LIMIT_VALUE_STANDARD_UNITS   | Num       | 22     |
| VIOLATION_TYPE_CODE          | Char      | 6      |
| VIOLATION_TYPE_DESC          | Char      | 100    |
| VIOLATION_CODE               | Char      | 5      |
| VIOLATION_DESC               | Char      | 100    |
| PARAMETER_CODE               | Char      | 5      |
| PARAMETER_DESC               | Char      | 100    |
| STANDARD_UNIT_CODE           | Char      | 2      |
| STANDARD_UNIT_DESC           | Char      | 13     |
| MONITORING_PERIOD_END_DATE   | Date      | 7      |
| NMBR_OF_REPORT               | Num       | 2      |
| EXCEEDANCE_PCT               | Num       | 22     |
| VALUE_QUALIFIER_CODE         | Char      | 3      |
| UNIT_CODE                    | Char      | 2      |
| VALUE_RECEIVED_DATE          | Date      | 7      |
| DAYS_LATE                    | Num       | 22     |
| ADJUSTED_DMR_STANDARD_UNITS  | Num       | 22     |
| LIMIT_ID                     | Num       | 22     |
| DMR_VALUE_STANDARD_UNITS     | Num       | 22     |
| VALUE_TYPE_CODE              | Char      | 3      |
| RNC_DETECTION_CODE           | Char      | 3      |
| RNC_DETECTION_DESC           | Char      | 100    |
| RNC_DETECTION_DATE           | Date      | 7      |
| RNC_RESOLUTION_CODE          | Char      | 3      |
| RNC_RESOLUTION_DESC          | Char      | 100    |
| RNC_RESOLUTION_DATE          | Date      | 7      |
| STATISTICAL_BASE_CODE        | Char      | 3      |
| STATISTICAL_BASE_MONTHLY_AVG | Char      | 1      |
| STATISTICAL_BASE_SHORT_DESC  | Char      | 10     |

### Violation Enforcement Actions (NPDES_VIOLATION_ENFORCEMENTS.csv)

| Element Name       | Data Type | Length |
| ------------------ | --------- | ------ |
| NPDES_VIOLATION_ID | Num       | 22     |
| VIOLATION_CODE     | Char      | 5      |
| VIOLATION_DESC     | Char      | 100    |
| ACTIVITY_ID        | Num       | 22     |
| ACTIVITY_TYPE_DESC | Char      | 100    |
| ENF_IDENTIFIER     | Char      | 25     |
| ACTIVITY_TYPE_CODE | Char      | 3      |

### Discharge Points (NPDES_OUTFALLS_LAYER.csv)

| Element Name             | Data Type | Length |
| ------------------------ | --------- | ------ |
| EXTERNAL_PERMIT_NMBR     | Varchar   | 9      |
| FACILITY_NAME            | Varchar   | 80     |
| LOCATION_ADDRESS         | Varchar   | 50     |
| CITY                     | Varchar   | 60     |
| STATE_CODE               | Varchar   | 2      |
| ZIP                      | Varchar   | 14     |
| FAC_COUNTY_NAME          | Varchar   | 100    |
| PERMIT_NAME              | Varchar   | 120    |
| FACILITY_TYPE_CODE       | Varchar   | 3      |
| FACILITY_TYPE_DESC       | Varchar   | 100    |
| PERMIT_TYPE_CODE         | Varchar   | 3      |
| PERMIT_STATUS_CODE       | Varchar   | 3      |
| PERMIT_TYPE_DESC         | Varchar   | 120    |
| PERMIT_STATUS_DESC       | Varchar   | 20     |
| SIC_CODES                | Varchar   | 4000   |
| SIC_DESCRIPTIONS         | Varchar   | 4000   |
| TOTAL_DESIGN_FLOW_NMBR   | Num       |        |
| NAICS_CODES              | Varchar   | 4000   |
| FAC_FEDERAL_AGENCY_NAME  | Varchar   | 150    |
| CWP_CURRENT_SNC_STATUS   | Varchar   | 50     |
| CWP_CURRENT_VIOL         | Varchar   | 3      |
| CWA_CURRENT_STATUS       | Varchar   | 100    |
| CWP_DATE_LAST_INSPECTION | Date      |        |
| DATE_LAST_FORMAL_EA      | Date      |        |
| DMR_POUNDS               | Num       |        |
| LIM_POLLUTANT            | Varchar   | 4000   |
| FAC_INDIAN_SPATIAL_FLG   | Char      | 1      |
| FAC_DERIVED_TRIBES       | Varchar   | 4000   |
| PERMIT_EFFECTIVE_DATE    | Date      |        |
| PERMIT_EXPIRATION_DATE   | Date      |        |
| PERMIT_TERMINATION_DATE  | Date      |        |
| PERMIT_COMPONENTS        | Varchar   | 1000   |
| PERM_FEATURE_NMBR        | Varchar   | 30     |
| MAJOR_MINOR_FLAG         | Char      | 5      |
| STATE_WATER_BODY_NAME    | Varchar   | 4000   |
| LATITUDE83               | Num       | 9, 6   |
| LONGITUDE83              | Num       | 10, 6  |
| SUB_TYPE_DESC            | Varchar   | 50     |
| LATLONG_TYPE             | Varchar   | 17     |

### NPDES Permit Limits (NPDES_LIMITS.csv)

| Element Name                | Data Type | Length |
| --------------------------- | --------- | ------ |
| ACTIVITY_ID                 | Number    | 22     |
| EXTERNAL_PERMIT_NMBR        | VarChar2  | 9      |
| VERSION_NMBR                | Number    | 22     |
| PERM_FEATURE_ID             | Number    | 22     |
| PERM_FEATURE_NMBR           | VarChar2  | 30     |
| PERM_FEATURE_TYPE_CODE      | VarChar2  | 3      |
| LIMIT_SET_ID                | Number    | 22     |
| LIMIT_SET_DESIGNATOR        | VarChar2  | 2      |
| LIMIT_SET_SCHEDULE_ID       | Number    | 22     |
| LIMIT_SET_STATUS_FLAG       | VarChar2  | 1      |
| LIMIT_ID                    | Number    | 22     |
| LIMIT_BEGIN_DATE            | Date      | 7      |
| LIMIT_END_DATE              | Date      | 7      |
| NMBR_OF_SUBMISSION          | Number    | 22     |
| NMBR_OF_REPORT              | Number    | 22     |
| PARAMETER_CODE              | VarChar2  | 5      |
| PARAMETER_DESC              | VarChar2  | 100    |
| MONITORING_LOCATION_CODE    | VarChar2  | 3      |
| STAY_TYPE_CODE              | VarChar2  | 1      |
| LIMIT_VALUE_ID              | Number    | 22     |
| LIMIT_VALUE_TYPE_CODE       | VarChar2  | 3      |
| LIMIT_VALUE_NMBR            | Number    | 22     |
| LIMIT_UNIT_CODE             | VarChar2  | 2      |
| LIMIT_UNIT_DESC             | VarChar2  | 13     |
| STANDARD_UNIT_CODE          | VarChar2  | 2      |
| STANDARD_UNIT_DESC          | VarChar2  | 13     |
| LIMIT_VALUE_STANDARD_UNITS  | Number    | 22     |
| STATISTICAL_BASE_CODE       | VarChar2  | 3      |
| STATISTICAL_BASE_TYPE_CODE  | VarChar2  | 3      |
| LIMIT_VALUE_QUALIFIER_CODE  | VarChar2  | 3      |
| STAY_VALUE_NMBR             | Number    | 22     |
| LIMIT_TYPE_CODE             | Char      | 3      |
| OPTIONAL_MONITORING_FLAG    | Char      | 1      |
| LIMIT_SAMPLE_TYPE_CODE      | VarChar2  | 2      |
| LIMIT_FREQ_OF_ANALYSIS_CODE | VarChar2  | 5      |
| ALL_MONTHS_LIMIT            | VarChar2  | 38     |
| JAN                         | Char      | 1      |
| FEB                         | Char      | 1      |
| MAR                         | Char      | 1      |
| APR                         | Char      | 1      |
| MAY                         | Char      | 1      |
| JUN                         | Char      | 1      |
| JUL                         | Char      | 1      |
| AUG                         | Char      | 1      |
| SEP                         | Char      | 1      |
| OCT                         | Char      | 1      |
| NOV                         | Char      | 1      |
| DEC                         | Char      | 1      |
| LIMIT_SEASON_ID             | VarChar2  | 2      |
