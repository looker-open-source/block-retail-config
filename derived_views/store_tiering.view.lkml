view: store_tiering_config {
  extension: required
  extends: [store_tiering_core]

  # Change the definition of a store tier here by updating this dervied table. Default query:
  # derived_table: {
  #   sql: SELECT store_id, store_name, DIV(rn,20)+1 AS tier_id
  #         FROM
  #         (SELECT id as store_id, name as store_name, ROW_NUMBER() OVER (ORDER BY total_sales desc) as rn
  #         FROM ${store_tiering_base.SQL_TABLE_NAME})  ;;
  # }

  # Add your custom fields here:
}
