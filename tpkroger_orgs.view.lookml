- view: tpkroger_orgs
  sql_table_name: dbo.tpkrogerOrgs
  fields:

  - dimension: f1
    type: string
    sql: ${TABLE}.F1

  - measure: count
    type: count
    drill_fields: []

