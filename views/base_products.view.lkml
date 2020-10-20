view: products_config {
  extends: [products_core]
  extension: required

  dimension: id {
    sql: ${TABLE}.id ;;
  }

  dimension: brand {
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    sql: ${TABLE}.category ;;
  }

  dimension: name {
    sql: ${TABLE}.name ;;
  }

  # Add your custom fields here:
}
