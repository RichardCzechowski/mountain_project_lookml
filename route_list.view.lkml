view: route_list {
  sql_table_name: mountain_project.route_list ;;

  dimension: index {
    type: number
    sql: ${TABLE}.`index` ;;
  }

  dimension: route_name {
    type: string
    sql: ${TABLE}.route_name ;;
  }

  dimension: route_url {
    type: string
    sql: ${TABLE}.route_url ;;
  }

  measure: count {
    type: count
    drill_fields: [route_name]
  }
}
