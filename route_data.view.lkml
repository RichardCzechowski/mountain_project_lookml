view: route_data {
  sql_table_name: mountain_project.route_data ;;

  dimension: comments_name {
    type: string
    sql: ${TABLE}.comments_name ;;
  }

  dimension: comments_text {
    type: string
    sql: ${TABLE}.comments_text ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.`index` ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [comments_name]
  }
}
