- view: customer_documents
  sql_table_name: dbo.CustomerDocuments
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

  - dimension: customer_profile_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerProfileID

  - dimension: document_descr
    type: string
    sql: ${TABLE}.DocumentDescr

  - dimension: document_filename
    type: string
    sql: ${TABLE}.DocumentFilename

  - dimension: document_type
    type: string
    sql: ${TABLE}.DocumentType

  - measure: count
    type: count
    drill_fields: [id, document_filename, customer_profile.id, customer_profile.name, customer_profile.image_name]

