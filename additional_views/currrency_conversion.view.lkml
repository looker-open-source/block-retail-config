include: "/additional_views/*.view"

view: currrency_conversion {
  sql_table_name: `rich-tome-273419.sephora_poc.CM_SA_DIM_CURRENCY_COUNTRY` ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension_group: valid_from {
    type: time
    timeframes: [raw,date]
    sql: ${TABLE}.valid_from ;;
  }

  dimension_group: valid_to {
    type: time
    timeframes: [raw,date]
    sql: ${TABLE}.valid_to ;;
  }

  dimension: exchange_rate {
    type: number
    sql: ${TABLE}.Exchange_Rate ;;
  }
}
