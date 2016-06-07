- view: stg_ucosummary
  sql_table_name: dbo.StgUCOSummary
  fields:

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: collected_units
    type: string
    sql: ${TABLE}.CollectedUnits

  - dimension: customer
    type: string
    sql: ${TABLE}.Customer

  - dimension: exception_code
    type: string
    sql: ${TABLE}.ExceptionCode

  - dimension: exception_notes
    type: string
    sql: ${TABLE}.ExceptionNotes

  - dimension: hauler_name
    type: string
    sql: ${TABLE}.HaulerName

  - dimension: manifest_no
    type: string
    sql: ${TABLE}.ManifestNo

  - dimension: postal_code
    type: string
    sql: ${TABLE}.PostalCode

  - dimension: recycling_center_city
    type: string
    sql: ${TABLE}.RecyclingCenterCity

  - dimension: recycling_center_name
    type: string
    sql: ${TABLE}.RecyclingCenterName

  - dimension: recycling_center_state
    type: string
    sql: ${TABLE}.RecyclingCenterState

  - dimension: recycling_method
    type: string
    sql: ${TABLE}.RecyclingMethod

  - dimension: service_category
    type: string
    sql: ${TABLE}.ServiceCategory

  - dimension: service_date
    type: string
    sql: ${TABLE}.ServiceDate

  - dimension: service_type
    type: string
    sql: ${TABLE}.ServiceType

  - dimension: site_number_
    type: string
    sql: ${TABLE}."SiteNumber "

  - dimension: site_type
    type: string
    sql: ${TABLE}.SiteType

  - dimension: state_or_province
    type: string
    sql: ${TABLE}.StateOrProvince

  - dimension: total_amount
    type: number
    sql: ${TABLE}.TotalAmount

  - dimension: vendor
    type: string
    sql: ${TABLE}.Vendor

  - measure: count
    type: count
    drill_fields: [recycling_center_name, hauler_name]

