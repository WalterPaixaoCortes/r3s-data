# Discharge Monitorig Report

The Enforcement and Compliance History Online (ECHO) system incorporates Discharge Monitoring Report (DMR) data submitted by NPDES permit holders to the states or directly to EPA via the US EPA Central Data Exchange (CDX). This compendium of DMR data identifies the permit conditions or limits for each water discharge location, the actual values, identified by the permittee, for each monitored pollutant that was discharged, and whether the amounts discharged exceeded the permit limits. DMR data are stored in the EPA Office of Enforcement Compliance Assurance, Integrated Compliance Information System (ICIS), where it is extracted by ECHO.

More details, click [here](https://echo.epa.gov/tools/data-downloads/icis-npdes-dmr-summary).

## Data elements

**File name:** NPDES DMR (NPDES_DMR_FYxxxx.csv)

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
| OPTIONAL_MONITORING_FLAG    | Char      | 1      |
| STAY_VALUE_NMBR             | Number    | 22     |
| DMR_EVENT_ID                | Number    | 22     |
| MONITORING_PERIOD_END_DATE  | Date      | 7      |
| DMR_FORM_VALUE_ID           | Number    | 22     |
| VALUE_TYPE_CODE             | VarChar2  | 3      |
| DMR_VALUE_ID                | Number    | 22     |
| DMR_VALUE_NMBR              | Number    | 22     |
| DMR_UNIT_CODE               | VarChar2  | 2      |
| DMR_UNIT_DESC               | VarChar2  | 13     |
| DMR_VALUE_STANDARD_UNITS    | Number    | 22     |
| DMR_VALUE_QUALIFIER_CODE    | VarChar2  | 3      |
| VALUE_RECEIVED_DATE         | Date      | 7      |
| DAYS_LATE                   | Number    | 22     |
| NODI_CODE                   | VarChar2  | 3      |
| EXCEEDANCE_PCT              | Number    | 22     |
| NPDES_VIOLATION_ID          | Number    | 22     |
| VIOLATION_CODE              | VarChar2  | 5      |
| RNC_DETECTION_CODE          | VarChar2  | 3      |
| RNC_DETECTION_DATE          | Date      | 7      |
| RNC_RESOLUTION_CODE         | VarChar2  | 3      |
| LIMIT_SAMPLE_TYPE_CODE      | VarChar2  | 2      |
| LIMIT_FREQ_OF_ANALYSIS_CODE | VarChar2  | 5      |
| DMR_SAMPLE_TYPE_CODE        | VarChar2  | 2      |
| DMR_FREQ_OF_ANALYSIS_CODE   | VarChar2  | 5      |
| REPORTED_EXCURSION_NMBR     | Number    | 22     |
