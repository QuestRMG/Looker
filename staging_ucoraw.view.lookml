- view: staging_ucoraw
  sql_table_name: dbo.StagingUCORaw
  fields:

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: city
    type: string
    sql: ${TABLE}.City

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

  - dimension: conversion_to_pounds
    type: number
    sql: ${TABLE}.ConversionToPounds

  - dimension: customer_name
    type: string
    sql: ${TABLE}.CustomerName

  - dimension: customer_site
    type: string
    sql: ${TABLE}.CustomerSite

  - dimension: exception_code
    type: string
    sql: ${TABLE}.ExceptionCode

  - dimension: exception_notes
    type: string
    sql: ${TABLE}.ExceptionNotes

  - dimension: file_load_id
    type: number
    sql: ${TABLE}.FileLoadID

  - dimension: hauler_name
    type: string
    sql: ${TABLE}.HaulerName

  - dimension_group: invoice
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.InvoiceDate

  - dimension: invoice_number
    type: string
    sql: ${TABLE}.InvoiceNumber

  - dimension: jacobsen_index
    type: number
    sql: ${TABLE}.JacobsenIndex

  - dimension: percent_of_jacobsen_index
    type: number
    sql: ${TABLE}.PercentOfJacobsenIndex

  - dimension: purchase_order_number
    type: string
    sql: ${TABLE}.PurchaseOrderNumber

  - dimension: recycling_center_city
    type: string
    sql: ${TABLE}.RecyclingCenterCity

  - dimension: recycling_center_name
    type: string
    sql: ${TABLE}.RecyclingCenterName

  - dimension: recycling_center_state
    type: string
    sql: ${TABLE}.RecyclingCenterState

  - dimension: row_id
    type: number
    sql: ${TABLE}.RowID

  - dimension: sales_tax
    type: number
    sql: ${TABLE}.SalesTax

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ServiceDate

  - dimension: service_number
    type: string
    sql: ${TABLE}.ServiceNumber

  - dimension: service_provider
    type: string
    sql: ${TABLE}.ServiceProvider

  - dimension: service_type
    type: string
    sql: ${TABLE}.ServiceType

  - dimension: site_type
    type: string
    sql: ${TABLE}.SiteType

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: subtotal
    type: number
    sql: ${TABLE}.Subtotal

  - dimension: total_price
    type: number
    sql: ${TABLE}.TotalPrice

  - dimension: yield_conversion_to_pounds
    type: number
    sql: ${TABLE}.YieldConversionToPounds

  - dimension: zip
    type: string
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: [customer_name, hauler_name, recycling_center_name]

