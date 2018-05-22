view: area_list {
  sql_table_name: mountain_project.area_list ;;

  dimension: area_name {
    type: string
    sql: ${TABLE}.area_name ;;
  }

  dimension: area_url {
    type: string
    sql: ${TABLE}.area_url ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.`index` ;;
  }

  measure: count {
    type: count
    drill_fields: [area_name]
  }
}
