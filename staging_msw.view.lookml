- view: staging_msw
  sql_table_name: dbo.StagingMSW
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: amount
    type: string
    sql: ${TABLE}.Amount

  - dimension: customer_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: external_id
    type: string
    sql: ${TABLE}.ExternalID

  - dimension: file_load_id
    type: number
    sql: ${TABLE}.FileLoadID

  - dimension: invoice_number
    type: string
    sql: ${TABLE}.InvoiceNumber

  - dimension: location
    type: string
    sql: ${TABLE}.Location

  - dimension: nsitem_id
    type: number
    sql: ${TABLE}.NSItemID

  - dimension: nsitem_name
    type: string
    sql: ${TABLE}.NSItemName

  - dimension: purchase_order_number
    type: string
    sql: ${TABLE}.PurchaseOrderNumber

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: rate
    type: string
    sql: ${TABLE}.Rate

  - dimension_group: service
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ServiceDate

  - dimension: staging_mswraw_id
    type: number
    # hidden: true
    sql: ${TABLE}.StagingMSWRawID

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - nsitem_name
    - staging_mswraw.id
    - customer.id
    - customer.name
    - vendor.id
    - vendor.name

