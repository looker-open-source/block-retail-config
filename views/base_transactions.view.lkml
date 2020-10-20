view: transactions_config {
  extends: [transactions_core]
  extension: required

  # Add view customisations here:

  # This block is built to work with a nested table at the transaction level
    # with the items in each transaction as a nested object, which significantly improves
    # performance and query cost.
    # See example here of using Looker's PDT functionality to achieve this:

  # derived_table: {
  #   datagroup_trigger: daily
  #   partition_keys: ["transaction_timestamp"]
  #   cluster_keys: ["store_id"]
  #   sql: SELECT transaction_timestamp
  #     ,channel_id
  #     ,store_id
  #     ,customer_id
  #   ,FARM_FINGERPRINT(CONCAT(transaction_timestamp,'-',store_id,'-',customer_id,'-',channel_id)) AS transaction_id
  #   ,ARRAY_AGG(STRUCT(product_id,sale_price,cost,quantity)) AS line_items
  #   FROM `@{SCHEMA_NAME}.@{TRANSACTIONS_TABLE_NAME}`
  #   GROUP BY 1,2,3,4,5;;
  # }

  dimension: transaction_id {
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: channel_id {
    sql: ${TABLE}.channel_id ;;
  }

  dimension: customer_id {
    hidden: no
    sql: ${TABLE}.customer_id ;;
  }

  dimension: is_customer {
    sql: ${customer_id} IS NOT NULL ;;
    # sql: ${customer_id} IS NOT NULL AND ${customer_id} <> '' AND ${customer_id} <> '0' ;;
  }

  dimension: line_items {
    sql: ${TABLE}.line_items ;;
  }

  dimension: store_id {
    sql: ${TABLE}.store_id ;;
  }

  dimension_group: transaction {
    sql: ${TABLE}.transaction_timestamp ;;
  }

  # Add your custom fields here:

  dimension: local_currency_code {}

}
