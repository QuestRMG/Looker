- view: net_suite_item_mapping
  sql_table_name: dbo.NetSuiteItemMapping
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: nsitem_id
    type: number
    sql: ${TABLE}.NSItemID

  - dimension: service_code
    type: string
    sql: ${TABLE}.ServiceCode

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorID

  - measure: count
    type: count
    drill_fields: [id, vendor.id, vendor.name]

