view: transactions__line_items_config {
  extends: [transactions__line_items_core]
  extension: required

  dimension: product_id {
    sql: ${TABLE}.CM_Material_ID ;;
  }

  dimension: sale_price {
    sql: ${TABLE}.Sales_VAT_in_LC / ${currency_conversion.exchange_rate} ;;
  }

  dimension: cost_of_goods_sold {
    sql: ${TABLE}.COGS_in_LC / ${currency_conversion.exchange_rate} ;;
  }

  # Add your custom fields here:
}
