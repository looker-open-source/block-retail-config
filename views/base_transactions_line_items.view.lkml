view: transactions__line_items_config {
  extends: [transactions__line_items_core]
  extension: required

  dimension: product_id {
    sql: ${TABLE}.CM_Material_ID ;;
  }

  dimension: sale_price {
    sql: ${TABLE}.Sales_VAT_in_LC ;;
  }

  dimension: cost_of_goods_sold {
    sql: ${TABLE}.COGS_in_LC ;;
  }

  # Add your custom fields here:
}
