- view: users
  sql_table_name: Users
  fields:

  - dimension: manager
    type: string
    sql: ${TABLE}.Manager

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: count
    type: count
    drill_fields: []

