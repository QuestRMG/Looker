- view: service_category_attribute_value
  sql_table_name: dbo.ServiceCategoryAttributeValue
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: attribute_value
    type: string
    sql: ${TABLE}.AttributeValue

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: service_category_attribute_id
    type: number
    # hidden: true
    sql: ${TABLE}.ServiceCategoryAttributeID

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - dimension: vendor_service_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorServiceID

  - measure: count
    type: count
    drill_fields: [id, vendor_service.id, vendor_service.hauler_name, service_category_attribute.id, service_category_attribute.attribute_name]

