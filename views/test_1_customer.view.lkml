view: test_1_customer {
  sql_table_name: [mfg_demos_mk.test_1_customer]
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.firstname ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.lastname ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [firstname, lastname]
  }
}
