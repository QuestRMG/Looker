- view: excel_auto_load
  sql_table_name: dbo.ExcelAutoLoad
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: _collected_units
    type: number
    sql: ${TABLE}." Collected Units"

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: berkshire_inv_
    type: string
    sql: ${TABLE}."Berkshire Inv #"

  - dimension_group: berkshire_inv
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Berkshire Inv Date"

  - dimension: berkshire_sales_tax
    type: string
    sql: ${TABLE}."Berkshire Sales Tax"

  - dimension: berkshire_sub_total
    type: string
    sql: ${TABLE}."Berkshire Sub Total"

  - dimension: berkshire_unit_price
    type: string
    sql: ${TABLE}."Berkshire Unit Price"

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: collected_uom
    type: string
    sql: ${TABLE}.CollectedUOM

  - dimension: container_size
    type: number
    sql: ${TABLE}.ContainerSize

  - dimension: container_type
    type: string
    sql: ${TABLE}.ContainerType

  - dimension: container_uom
    type: string
    sql: ${TABLE}.ContainerUOM

  - dimension: customer
    type: string
    sql: ${TABLE}.Customer

  - dimension: exception_code
    type: string
    sql: ${TABLE}.ExceptionCode

  - dimension: exception_notes
    type: string
    sql: ${TABLE}.ExceptionNotes

  - dimension: f19
    type: number
    sql: ${TABLE}.F19

  - dimension: hauler_name
    type: string
    sql: ${TABLE}.HaulerName

  - dimension: invoice_
    type: string
    sql: ${TABLE}."Invoice #"

  - dimension: po_
    type: string
    sql: ${TABLE}."PO #"

  - dimension: postal_code
    type: string
    sql: ${TABLE}.PostalCode

  - dimension_group: quest_billable_inv
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Quest Billable InvDate"

  - dimension: quest_billable_invoice_
    type: number
    sql: ${TABLE}."Quest Billable Invoice #"

  - dimension: quest_profit
    type: string
    sql: ${TABLE}."Quest Profit"

  - dimension: quest_sales_tax
    type: string
    sql: ${TABLE}."Quest Sales Tax"

  - dimension: quest_sub_total
    type: string
    sql: ${TABLE}."Quest SubTotal"

  - dimension: quest_total_price
    type: string
    sql: ${TABLE}."Quest Total Price"

  - dimension: quest_unit_price
    type: string
    sql: ${TABLE}."Quest Unit Price"

  - dimension: recycling_center_city
    type: string
    sql: ${TABLE}.RecyclingCenterCity

  - dimension: recycling_center_name
    type: string
    sql: ${TABLE}.RecyclingCenterName

  - dimension: recycling_center_state
    type: string
    sql: ${TABLE}.RecyclingCenterState

  - dimension: service_category
    type: string
    sql: ${TABLE}.ServiceCategory

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ServiceDate

  - dimension: service_frequency
    type: number
    sql: ${TABLE}."Service Frequency"

  - dimension: service_number
    type: string
    sql: ${TABLE}."Service Number"

  - dimension: service_type
    type: string
    sql: ${TABLE}.ServiceType

  - dimension: site_number_
    type: number
    sql: ${TABLE}."SiteNumber "

  - dimension: site_type
    type: string
    sql: ${TABLE}.SiteType

  - dimension: state_or_province
    type: string
    sql: ${TABLE}.StateOrProvince

  - dimension: terminated_waste_manifest
    type: string
    sql: ${TABLE}."Terminated Waste Manifest"

  - dimension: total_amount
    type: number
    sql: ${TABLE}.TotalAmount

  - dimension: vendor
    type: string
    sql: ${TABLE}.Vendor

  - dimension: vendor_part_
    type: string
    sql: ${TABLE}."Vendor Part #"

  - measure: count
    type: count
    drill_fields: [id, hauler_name, recycling_center_name]

