view: stores_config {
  extends: [stores_core]
  extension: required

  dimension: id {
    sql: ${TABLE}.id ;;
  }

  dimension: latitude {
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    sql: ${TABLE}.Longitude ;;
  }

  dimension: name {
    sql: ${TABLE}.name ;;
  }

  # Add your custom fields here:
}
