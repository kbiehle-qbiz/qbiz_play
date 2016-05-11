- view: orders
  sql_table_name: Orders
  fields:

  - dimension: order_id
    primary_key: true
    type: number
    sql: ${TABLE}.Order_ID

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: customer_name
    type: string
    sql: ${TABLE}.Customer_Name

  - dimension: customer_segment
    type: string
    sql: ${TABLE}.Customer_Segment

  - dimension: discount
    type: number
    sql: ${TABLE}.Discount

  - dimension_group: order
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Order_Date

  - dimension: order_priority
    type: string
    sql: ${TABLE}.Order_Priority

  - dimension: order_quantity
    type: number
    sql: ${TABLE}.Order_Quantity

  - dimension: product_base_margin
    type: number
    sql: ${TABLE}.Product_Base_Margin

  - dimension: product_category
    type: string
    sql: ${TABLE}.Product_Category

  - dimension: product_container
    type: string
    sql: ${TABLE}.Product_Container

  - dimension: product_name
    type: string
    sql: ${TABLE}.Product_Name

  - dimension: product_sub_category
    type: string
    sql: ${TABLE}.Product_Sub_Category

  - dimension: profit
    type: number
    sql: ${TABLE}.Profit

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: row_id
    type: number
    sql: ${TABLE}.Row_ID

  - dimension: sales
    type: number
    sql: ${TABLE}.Sales

  - dimension_group: ship
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.Ship_Date

  - dimension: ship_mode
    type: string
    sql: ${TABLE}.Ship_Mode

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.Shipping_Cost

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: unit_price
    type: number
    sql: ${TABLE}.Unit_Price

  - dimension: zip_code
    type: string
    sql: ${TABLE}.Zip_Code

  - measure: count
    type: count
    drill_fields: [order_id, product_name, customer_name, returns.count]

