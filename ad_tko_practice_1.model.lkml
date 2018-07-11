connection: "thelook_events"

include: "*.view.lkml"         # include all views in this project
# include: "*.dashboard.lookml"  # include all dashboards in this project

explore: order_items {
  join: users {
    sql_on: ${order_items.user_id} = ${users.id};;
    relationship: many_to_one
  }
}
