- view: wal_org
  sql_table_name: dbo.WalOrg
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

  - dimension: postal_code
    type: number
    sql: ${TABLE}."Postal Code"

  - dimension: site_number_
    type: number
    sql: ${TABLE}."Site Number "

  - dimension: site_type
    type: string
    sql: ${TABLE}."Site Type"

  - dimension: state_or_province
    type: string
    sql: ${TABLE}."State Or Province"

  - measure: count
    type: count
    drill_fields: []

