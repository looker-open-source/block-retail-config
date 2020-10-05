explore: transactions_config {
  extends: [transactions_core]
  extension: required

  # Add additional joins here

  ## Example of  joining to currency conversion table:
  # join: currency_conversion {
  #   relationship: many_to_one
  #   sql_on: ${transactions.local_currency_code} = ${currency_conversion.currency}
  #     AND ${transactions.transaction_date} = ${currency_conversion.currency_date};;
  # }
}

explore: stock_forecasting_explore_base_config {
  extends: [stock_forecasting_explore_base_core]
  extension: required
}

explore: order_purchase_affinity_config {
  extends: [order_purchase_affinity_core]
  extension: required
}

explore: customer_clustering_prediction_config {
  extends: [customer_clustering_prediction_core]
  extension: required
}
