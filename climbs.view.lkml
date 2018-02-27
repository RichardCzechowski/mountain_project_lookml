view: climbs {
  sql_table_name: mountain_proj.climbs ;;

  dimension: aid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Aid ;;
  }

  dimension: alpine {
    type: number
    sql: ${TABLE}.Alpine ;;
  }

  dimension: area_id {
    type: number
    sql: ${TABLE}.Area_ID ;;
  }

  dimension: area_link {
    type: string
    sql: ${TABLE}.Area_Link ;;
  }

  dimension: area_name {
    type: string
    sql: ${TABLE}.Area_Name ;;
  }

  dimension: boulder {
    type: number
    sql: ${TABLE}.Boulder ;;
  }

  dimension: boulder_route_grade {
    type: string
    sql: ${TABLE}.Boulder_Route_Grade ;;
  }

  dimension: chipped {
    type: number
    sql: ${TABLE}.Chipped ;;
  }

  dimension: committment_grade {
    type: string
    sql: ${TABLE}.Committment_Grade ;;
  }

  dimension: ice_snow {
    type: number
    sql: ${TABLE}.Ice_Snow ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.Lat ;;
  }

  dimension: lon {
    type: string
    sql: ${TABLE}.Lon ;;
  }

  dimension: mixed {
    type: number
    sql: ${TABLE}.Mixed ;;
  }

  dimension: pitches {
    type: string
    sql: ${TABLE}.Pitches ;;
  }

  dimension: roped_route_grade {
    type: string
    sql: ${TABLE}.Roped_Route_Grade ;;
  }

  dimension: route_grade {
    type: string
    sql: ${TABLE}.Route_Grade ;;
  }

  dimension: route_id {
    type: number
    sql: ${TABLE}.Route_ID ;;
  }

  dimension: route_length {
    type: string
    sql: ${TABLE}.Route_Length ;;
  }

  dimension: route_link {
    type: string
    sql: ${TABLE}.Route_Link ;;
  }

  dimension: route_name {
    type: string
    sql: ${TABLE}.Route_Name ;;
  }

  dimension: sport {
    type: number
    sql: ${TABLE}.Sport ;;
  }

  dimension: top_rope {
    type: number
    sql: ${TABLE}.Top_Rope ;;
  }

  dimension: trad {
    type: number
    sql: ${TABLE}.Trad ;;
  }

  measure: count {
    type: count
    drill_fields: [route_name, area_name]
  }
}
