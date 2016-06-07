- view: data
  sql_table_name: dbo.data$
  fields:

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: city
    type: string
    sql: ${TABLE}.City

#  - dimension: collected_units
#    type: number
#    sql: ${TABLE}."Collected Units"

  - dimension: collected_units
    type: number
    sql: ${TABLE}.CollectedUnits

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

  - dimension: customer_rebate
    type: number
    sql: ${TABLE}.CustomerRebate

  - dimension: exception_code
    type: string
    sql: ${TABLE}."Exception Code"

  - dimension: exception_notes
    type: string
    sql: ${TABLE}."Exception Notes"

  - dimension: hauler_name
    type: string
    sql: ${TABLE}."Hauler Name"

  - dimension: invoice_date
    type: string
    sql: ${TABLE}.InvoiceDate

  - dimension: invoice_num
    type: number
    sql: ${TABLE}.InvoiceNum

  - dimension: ponum
    type: string
    sql: ${TABLE}.PONum

  - dimension: postal_code
    type: number
    sql: ${TABLE}."Postal Code"

  - dimension: quest_service_price
    type: number
    sql: ${TABLE}.QuestServicePrice

  - dimension: quest_tax
    type: number
    sql: ${TABLE}.QuestTax

  - dimension: rebate
    type: number
    sql: ${TABLE}.Rebate

  - dimension: recycling_center_city
    type: string
    sql: ${TABLE}."Recycling Center City"

  - dimension: recycling_center_name
    type: string
    sql: ${TABLE}."Recycling Center Name"

  - dimension: recycling_center_state
    type: string
    sql: ${TABLE}."Recycling Center State"

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}."Service Date"

  - dimension: service_number
    type: number
    sql: ${TABLE}.ServiceNumber

  - dimension: service_type
    type: string
    sql: ${TABLE}."Service Type"

  - dimension: site_number_
    type: string
    sql: ${TABLE}."Site Number "

  - dimension: site_type
    type: string
    sql: ${TABLE}."Site Type"

  - dimension: state_or_province
    type: string
    sql: ${TABLE}."State Or Province"

  - dimension: total_amount
    type: number
    sql: ${TABLE}."Total Amount"

  - dimension: vendor
    type: string
    sql: ${TABLE}.Vendor

  - dimension: vendor_sales_tax
    type: number
    sql: ${TABLE}.VendorSalesTax

  - dimension: vendor_sub_total
    type: number
    sql: ${TABLE}.VendorSubTotal

  - dimension: vendor_total_price
    type: number
    sql: ${TABLE}.VendorTotalPrice

  - dimension: vendor_unit_price
    type: number
    sql: ${TABLE}.VendorUnitPrice

  - measure: count
    type: count
    drill_fields: [hauler_name, recycling_center_name]

