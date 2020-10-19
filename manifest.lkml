project_name: "retail-block-config"

################ Constants ################

constant: SCHEMA_NAME {
  value: "looker-demo.retail"
  export: override_required
}

constant: WEATHER_SCHEMA_NAME {
  value: "bigquery-public-data.ghcn_d"
  export: override_required
}

constant: TRANSACTIONS_TABLE_NAME {
  value: "transactions"
  export: override_required
}

constant: CHANNELS_TABLE_NAME {
  value: "dim_channels"
  export: override_required
}

constant: CUSTOMERS_TABLE_NAME {
  value: "dim_customers"
  export: override_required
}

constant: PRODUCTS_TABLE_NAME {
  value: "dim_products"
  export: override_required
}

constant: STORES_TABLE_NAME {
  value: "dim_stores"
  export: override_required
}

constant: MAIN_CURRENCY_SYMBOL {
  value: "$"
  export: override_required
}

constant: IMAGE_SEARCH_URL {
  value: "https://us-central1-looker-demo.cloudfunctions.net/imageSearch?q="
  export: override_required
}
