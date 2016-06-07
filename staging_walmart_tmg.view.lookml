- view: staging_walmart_tmg
  sql_table_name: dbo.StagingWalmartTMG
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

  - dimension: customer_site
    type: number
    sql: ${TABLE}.CustomerSite

  - dimension: exception_code
    type: string
    sql: ${TABLE}.ExceptionCode

  - dimension: exception_notes
    type: string
    sql: ${TABLE}.ExceptionNotes

  - dimension: invoice_number
    type: string
    sql: ${TABLE}.InvoiceNumber

  - dimension: purchase_order_number
    type: string
    sql: ${TABLE}.PurchaseOrderNumber

  - dimension: report_month
    type: string
    sql: ${TABLE}.ReportMonth

  - dimension: row_id
    type: number
    sql: ${TABLE}.RowID

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ServiceDate

  - dimension: service_frequency
    type: string
    sql: ${TABLE}.ServiceFrequency

  - dimension: service_month_from_table
    type: string
    sql: ${TABLE}.ServiceMonth

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

  - dimension: zip
    type: string
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: []

