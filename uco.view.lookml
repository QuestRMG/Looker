- view: uco
  sql_table_name: dbo.UCO
  fields:

  - dimension: animal_feed
    type: number
    sql: ${TABLE}.AnimalFeed

  - dimension: biodiesel
    type: number
    sql: ${TABLE}.Biodiesel

  - dimension: boiler_fuel
    type: number
    sql: ${TABLE}.BoilerFuel

  - dimension: chemical_industry
    type: number
    sql: ${TABLE}.ChemicalIndustry

  - dimension: compost
    type: number
    sql: ${TABLE}.Compost

  - dimension: direct_feed
    type: number
    sql: ${TABLE}.DirectFeed

  - dimension: store_number
    type: number
    sql: ${TABLE}.StoreNumber

  - measure: count
    type: count
    drill_fields: []

