# Facility Registry Service Data Elements

EPA's Facility Registry Service (FRS) is a centrally managed database that identifies facilities, sites, or places (program interest) subject to environmental regulations or of environmental interest. It assigns a unique identifier to each program interest, and provides a cross-reference (linkage) to data records about that interest which reside in many of EPA’s programmatic data management systems.

Using the FRS program interest linkage, records included in the FRS download file are those with a valid FRS and which are cross-referenced by ID number to data contained in ICIS-Air, TRI, GHG (E-GGRT), RCRAInfo, SDWIS, ICIS-NPDES, RMP, CEDRI, CAMD, EIS, TSCA, or Superfund Enterprise Management System (SEMS).

## Data Elements

### **FRS_FACILITIES**

| Element Name      | Data Type | Length | Long Name                     |
| ----------------- | --------- | ------ | ----------------------------- |
| FAC_NAME          | Char      | 200    | Facility name                 |
| FAC_STREET        | Char      | 200    | Street address                |
| FAC_CITY          | Char      | 100    | City                          |
| FAC_STATE         | Char      | 2      | State abbreviation            |
| FAC_ZIP           | Char      | 10     | Postal ZIP code               |
| REGISTRY_ID       | Char      | 36     | FRS Registry ID [Primary Key] |
| FAC_COUNTY        | Char      | 100    | County name                   |
| FAC_EPA_REGION    | Char      | 2      | EPA Region Code               |
| LATITUDE_MEASURE  | Num       | 22     | Latitude Coordinate           |
| LONGITUDE_MEASURE | Num       | 22     | Longitude Coordinate          |

### **FRS_PROGRAM_LINKS**

| Element Name          | Data Type | Length | Long Name                                                  |
| --------------------- | --------- | ------ | ---------------------------------------------------------- |
| PGM_SYS_ACRNM         | Char      | 60     | Program System Acronym [Primary Key]                       |
| PGM_SYS_ID            | Char      | 90     | Program System Identification Number [Primary Key]         |
| REGISTRY_ID           | Char      | 26     | FRS Registry ID                                            |
| PRIMARY_NAME          | Char      | 200    | Facility name in the program system                        |
| LOCATION_ADDRESS      | Char      | 200    | Street address (physical location)                         |
| SUPPLEMENTAL_LOCATION | Char      | 200    | Supplemental address information                           |
| CITY_NAME             | Char      | 100    | City Name                                                  |
| COUNTY_NAME           | Char      | 100    | County Name                                                |
| FIPS_CODE             | Char      | 10     | Federal Information Processing Standard (FIPS) county code |
| STATE_CODE            | Char      | 2      | State abbreviation                                         |
| STATE_NAME            | Char      | 100    | State name                                                 |
| COUNTRY_NAME          | Char      | 100    | Country name                                               |
| POSTAL_CODE           | Char      | 10     | Postal ZIP code                                            |

### **FRS_NAICS_CODES**

| Element Name  | Data Type | Length | Long Name                                                            |
| ------------- | --------- | ------ | -------------------------------------------------------------------- |
| PGM_SYS_ID    | Char      | 90     | Program System Identification Number [Primary Key]                   |
| PGM_SYS_ACRNM | Char      | 60     | Program System Acronym [Primary Key]                                 |
| NAICS_CODE    | Char      | 6      | Six-digit North American Industry Classification System (NAICS) Code |
| REGISTRY_ID   | Char      | 36     | FRS Registry ID                                                      |

### **FRS_SIC_CODES**

| Element Name  | Data Type | Length | Long Name                                                |
| ------------- | --------- | ------ | -------------------------------------------------------- |
| PGM_SYS_ID    | Char      | 90     | Program System Identification Number [Primary Key]       |
| PGM_SYS_ACRNM | Char      | 60     | Program System Acronym [Primary Key]                     |
| SIC_CODE      | Char      | 4      | Four-digit Standard Industrial Classification (SIC) Code |
| REGISTRY_ID   | Char      | 36     | FRS Registry ID                                          |
