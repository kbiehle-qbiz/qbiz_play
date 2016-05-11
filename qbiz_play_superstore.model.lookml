- connection: qbiz_play

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: orders

- explore: returns
  joins:
    - join: orders
      type: left_outer 
      sql_on: ${returns.order_id} = ${orders.order_id}
      relationship: many_to_one


- explore: users

