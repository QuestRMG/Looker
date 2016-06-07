- view: bha_ids
  sql_table_name: dbo.BHA_IDS
  fields:

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: customer
    type: string
    sql: ${TABLE}.Customer

  - dimension: location_name
    type: string
    sql: ${TABLE}."Location Name"

  - dimension: location_number
    type: number
    sql: ${TABLE}."Location Number"

  - dimension: location_type
    type: string
    sql: ${TABLE}."Location Type"

  - dimension: net_suite_id
    type: number
    sql: ${TABLE}.NetSuiteId

  - dimension: net_suite_name
    type: string
    sql: ${TABLE}."NetSuite Name"

  - dimension: phaseware_id
    type: number
    sql: ${TABLE}.PhasewareId

  - dimension: phaseware_name
    type: string
    sql: ${TABLE}."Phaseware Name"

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: zip_code
    type: number
    sql: ${TABLE}."Zip Code"

  - measure: count
    type: count
    drill_fields: [location_name, net_suite_name, phaseware_name]

