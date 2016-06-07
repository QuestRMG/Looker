- view: staging_mswraw
  sql_table_name: dbo.StagingMSWRaw
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: amount
    type: number
    sql: ${TABLE}.Amount

  - dimension_group: bill
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.BillDate

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: company
    type: string
    sql: ${TABLE}.Company

  - dimension: customer_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: exception
    type: string
    sql: ${TABLE}.Exception

  - dimension: exception_notes
    type: string
    sql: ${TABLE}.ExceptionNotes

  - dimension: file_load_id
    type: number
    sql: ${TABLE}.FileLoadID

  - dimension: invoice_number
    type: string
    sql: ${TABLE}.InvoiceNumber

  - dimension: item_id
    type: number
    sql: ${TABLE}.ItemID

  - dimension: location
    type: string
    sql: ${TABLE}.Location

  - dimension: purchase_order_number
    type: string
    sql: ${TABLE}.PurchaseOrderNumber

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: rate
    type: number
    sql: ${TABLE}.Rate

  - dimension: service_code_alpha
    type: string
    sql: ${TABLE}.ServiceCodeAlpha

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ServiceDate

  - dimension: service_description
    type: string
    sql: ${TABLE}.ServiceDescription

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorID

  - dimension: zip
    type: string
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - customer.id
    - customer.name
    - vendor.id
    - vendor.name
    - staging_msw.count

