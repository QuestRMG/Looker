- view: tires
  sql_table_name: dbo.TIRES
  fields:

  - dimension: civil_engineering
    type: number
    sql: ${TABLE}.CivilEngineering

  - dimension: crumb_rubber
    type: number
    sql: ${TABLE}.CrumbRubber

  - dimension: landfill_cover
    type: number
    sql: ${TABLE}.LandfillCover

  - dimension: mine_reclamation
    type: number
    sql: ${TABLE}.MineReclamation

  - dimension: mulch
    type: number
    sql: ${TABLE}.Mulch

  - dimension: other
    type: number
    sql: ${TABLE}.Other

  - dimension: reuse
    type: number
    sql: ${TABLE}.Reuse

  - dimension: store_number
    type: number
    sql: ${TABLE}.StoreNumber

  - dimension: tdf
    type: number
    sql: ${TABLE}.TDF

  - measure: count
    type: count
    drill_fields: []

