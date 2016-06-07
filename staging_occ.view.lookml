- view: staging_occ
  sql_table_name: dbo.StagingOCC
  fields:

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: bol
    type: number
    sql: ${TABLE}.BOL

  - dimension: carrier
    type: string
    sql: ${TABLE}.Carrier

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: collected_units
    type: number
    sql: ${TABLE}."Collected Units"

  - dimension: customer
    type: string
    sql: ${TABLE}.Customer

  - dimension: f23
    type: string
    sql: ${TABLE}.F23

  - dimension: freight_chargeback
    type: number
    sql: ${TABLE}."Freight Chargeback"

  - dimension: invoice_
    type: string
    sql: ${TABLE}."Invoice #"

  - dimension: net_price
    type: number
    sql: ${TABLE}."Net Price"

  - dimension: po_number
    type: string
    sql: ${TABLE}."PO Number"

  - dimension: postal_code
    type: number
    sql: ${TABLE}."Postal Code"

  - dimension: rebate_dollars_chicago14
    type: number
    sql: ${TABLE}."Rebate dollars (Chicago+14)"

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Service Date"

  - dimension: service_frequency
    type: string
    sql: ${TABLE}."Service Frequency"

  - dimension: service_type
    type: string
    sql: ${TABLE}."Service Type"

  - dimension: site_number_
    type: string
    sql: ${TABLE}."Site Number "

  - dimension: site_type
    type: string
    sql: ${TABLE}.SiteType

  - dimension: state_or_province
    type: string
    sql: ${TABLE}."State Or Province"

  - dimension: total_amount
    type: number
    sql: ${TABLE}."Total Amount"

  - dimension: trailer_
    type: number
    sql: ${TABLE}."Trailer #"

  - dimension: vendor
    type: string
    sql: ${TABLE}.Vendor

  - measure: count
    type: count
    drill_fields: []

