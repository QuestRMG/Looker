- view: bhamaster
  sql_table_name: dbo.BHAMaster
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

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: zip_code
    type: number
    sql: ${TABLE}."Zip Code"

  - measure: count
    type: count
    drill_fields: [location_name]

