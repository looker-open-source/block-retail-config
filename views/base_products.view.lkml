view: products_config {
  extends: [products_core]
  extension: required

  dimension: id {
    sql: ${TABLE}.Material_ID ;;
  }

  dimension: brand {
    sql: ${TABLE}.Brand_Description ;;
  }

  dimension: category {
    sql: ${TABLE}.Department_Code ;;
  }

  dimension: name {
    sql: ${TABLE}.Material_Description ;;
  }

  # Add your custom fields here:
}
