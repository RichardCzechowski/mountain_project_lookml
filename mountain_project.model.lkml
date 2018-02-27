connection: "mountain_project"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: mountain_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mountain_project_default_datagroup

explore: climbs {}
