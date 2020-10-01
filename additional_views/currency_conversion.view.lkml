#### Example Currency conversion view:

# view: currency_conversion {
#   sql_table_name: `gcp-project.schema.currency_conversion_table` ;;

#   parameter: local_currency {
#     type: yesno
#     default_value: "no"
#   }

#   dimension: selected_exchange_rate {
#     hidden: no
#     type: number
#     sql: {% if local_currency._parameter_value == 'true' %} 1 {% else %} ${exchange_rate} {% endif %}   ;;
#   }

#   dimension: currency {
#     type: string
#     sql: ${TABLE}.to_currency ;;
#   }

#   dimension_group: currency {
#     hidden: yes
#     type: time
#     timeframes: [raw,date]
#     datatype: date
#     sql: ${TABLE}.date ;;
#   }

#   dimension: exchange_rate {
#     hidden: yes
#     type: number
#     sql: ${TABLE}.Exchange_Rate ;;
#   }
# }
