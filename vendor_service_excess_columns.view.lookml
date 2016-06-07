- view: vendor_service_excess_columns
  sql_table_name: dbo.VendorServiceExcessColumns
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: column_name
    type: string
    sql: ${TABLE}.ColumnName

  - dimension: column_value
    type: string
    sql: ${TABLE}.ColumnValue

  - dimension: vendor_service_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorServiceID

  - measure: count
    type: count
    drill_fields: [id, column_name, vendor_service.id, vendor_service.hauler_name]

