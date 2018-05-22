view: climbs {
  sql_table_name: mountain_proj.climbs ;;

  dimension: aid {
    hidden: yes
    type: yesno
    value_format_name: id
    sql: ${TABLE}.Aid ;;
  }

  dimension: alpine {
    hidden: yes
    type: yesno
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
    hidden: yes
    type: yesno
    sql: ${TABLE}.Boulder ;;
  }

  dimension: boulder_route_grade {
    type: string
    sql: ${TABLE}.Boulder_Route_Grade ;;
  }

  dimension: chipped {
    type: yesno
    sql: ${TABLE}.Chipped ;;
  }

  dimension: committment_grade {
    type: string
    sql: ${TABLE}.Committment_Grade ;;
  }

  dimension: ice_snow {
    type: yesno
    sql: ${TABLE}.Ice_Snow ;;
  }

  dimension: lat {
    type: string
    sql: ${TABLE}.Lat ;;
    hidden: yes
  }

  dimension: lon {
    type: string
    sql: ${TABLE}.Lon ;;
    hidden: yes
  }

  dimension: location {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${lon} ;;
  }

  dimension: mixed {
    hidden: yes
    type: yesno
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
    hidden: yes
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
    hidden: yes
    type: yesno
    sql: ${TABLE}.Sport ;;
  }

  dimension: top_rope {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Top_Rope ;;
  }

  dimension: trad {
    hidden: yes
    type: yesno
    sql: ${TABLE}.Trad ;;
  }

  dimension: type {
    case: {
      when: {
        sql: ${TABLE}.aid = 1 ;;
        label: "Aid"
      }
      when: {
        sql: ${TABLE}.alpine = 1 ;;
        label: "Alpine"
      }

      when: {
        sql: ${TABLE}.boulder = 1 ;;
        label: "Boulder"
      }
      when: {
        sql: ${TABLE}.ice_snow = 1 ;;
        label: "Ice"
      }

      when: {
        sql: ${TABLE}.mixed = 1 ;;
        label: "Mixed"
      }
      when: {
        sql: ${TABLE}.sport = 1 ;;
        label: "Sport"
      }
      when: {
        sql: ${TABLE}.toprope = 1 ;;
        label: "Trad"
      }
      when: {
        sql: ${TABLE}.trad = 1 ;;
        label: "Trad"
      }
    }
  }

  measure: count {
    type: count
    drill_fields: [route_name, area_name]
  }
}
