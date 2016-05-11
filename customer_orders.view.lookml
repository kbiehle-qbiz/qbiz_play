- view: customer_orders

  derived_table:
    sql: |
      SELECT orders.Customer_Name AS Customer_name
        , COUNT(*) AS lifetime_orders
          FROM orders
      GROUP BY orders.Customer_Name
    indexes: [Customer_name]
    persist_for: 12 hours
#     sql_trigger_value: SELECT CURDATE()
  fields:

# DIMENSIONS #

  - dimension: Customer_name
    primary_key: true
    hidden: false

  - dimension: lifetime_orders
    type: number
    
  