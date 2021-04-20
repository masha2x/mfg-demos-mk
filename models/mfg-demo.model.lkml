connection: "mfg_demos"

# include all the views
include: "/views/**/*.view"

datagroup: mfg_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mfg_demo_default_datagroup
explore: test_1_customer {}
