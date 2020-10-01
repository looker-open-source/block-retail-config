view: transactions__line_items_config {
  extends: [transactions__line_items_core]
  extension: required

  dimension: product_id {
    sql: ${TABLE}.CM_Material_ID ;;
  }

  dimension: sale_price {
    sql: ${TABLE}.Sales_VAT_in_LC / ${selected_exchange_rate} ;;
  }

  dimension: quantity {
    sql: ${TABLE}.quantity ;;
  }

  dimension: cost_of_goods_sold {
    sql: ${TABLE}.COGS_in_LC / ${selected_exchange_rate} ;;
  }

  # Add your custom fields here:

  dimension: currency_rate {
    type: number
    sql: ${TABLE}.currency_rate ;;
  }

  parameter: local_currency {
    type: yesno
    default_value: "no"
  }

  dimension: selected_exchange_rate {
    hidden: no
    type: number
    sql: {% if local_currency._parameter_value == 'true' %} 1 {% else %} ${currency_rate} {% endif %}   ;;
  }
}
