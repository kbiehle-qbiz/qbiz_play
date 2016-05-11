- view: returns
  sql_table_name: Returns
  fields:

  - dimension: order_id
    type: number
    # hidden: true
    sql: ${TABLE}.Order_ID

  - dimension: status
    type: string
    sql: ${TABLE}.Status

  - measure: count
    type: count
    drill_fields: [orders.product_name, orders.customer_name, orders.order_id]

