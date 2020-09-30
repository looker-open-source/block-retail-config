include: "/additional_views/*.view"

view: currency_conversion {
  # sql_table_name: `rich-tome-273419.sephora_poc.CM_SA_DIM_CURRENCY_COUNTRY` ;;
  derived_table: {
    datagroup_trigger: forever
    sql: SELECT *
    FROM `rich-tome-273419.sephora_poc.CM_SA_DIM_CURRENCY_COUNTRY`
    , UNNEST(GENERATE_DATE_ARRAY(PARSE_DATE('%Y%m%d',CAST(valid_from AS STRING)),PARSE_DATE('%Y%m%d',CAST(valid_to AS STRING)))) AS date;;
  }

  parameter: local_currency {
    type: yesno
    default_value: "no"
  }

  dimension: selected_exchange_rate {
    hidden: no
    type: number
    sql: {% if local_currency._parameter_value == 'true' %} 1 {% else %} ${exchange_rate} {% endif %}   ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.to_currency ;;
  }

  dimension_group: currency {
    hidden: yes
    type: time
    timeframes: [raw,date]
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: exchange_rate {
    hidden: yes
    type: number
    sql: ${TABLE}.Exchange_Rate ;;
  }
}
