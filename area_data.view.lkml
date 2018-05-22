view: area_data {
  sql_table_name: mountain_project.area_data ;;

  dimension: comments_name {
    type: string
    sql: ${TABLE}.comments_name ;;
  }

  dimension: comments_text {
    type: string
    sql: ${TABLE}.comments_text ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: lat {
    type: string
    sql: SUBSTRING(${geo}, 1, LOCATE(',', ${geo}) -1) ;;
  }

  dimension: long {
    type: string
    sql: SUBSTRING(${geo}, LOCATE(',', ${geo}) + 1, LENGTH(${geo})) ;;
  }

  dimension: latlong {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${long} ;;
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
