- view: stg_mswmaster
  sql_table_name: dbo.StgMSWMaster
  fields:

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: calc_frequency
    type: number
    sql: ${TABLE}.CalcFrequency

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: equipment
    type: string
    sql: ${TABLE}.Equipment

  - dimension: market
    type: string
    sql: ${TABLE}.Market

  - dimension: material
    type: string
    sql: ${TABLE}.Material

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension_group: rollout
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Rollout Date"

  - dimension: size
    type: number
    sql: ${TABLE}.Size

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: store_
    type: number
    sql: ${TABLE}."Store #"

  - dimension: store_phone_number
    type: string
    sql: ${TABLE}."Store Phone Number"

  - dimension: uom
    type: string
    sql: ${TABLE}.UOM

  - dimension: zip_
    type: number
    sql: ${TABLE}."Zip "

  - measure: count
    type: count
    drill_fields: []

