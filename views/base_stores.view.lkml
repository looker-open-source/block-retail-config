view: stores_config {
  extends: [stores_core]
  extension: required

  dimension: id {
    sql: ${TABLE}.CM_STORE_ID ;;
  }

  dimension: latitude {
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    sql: ${TABLE}.Longitude ;;
  }

  dimension: name {
    sql: ${TABLE}.Store_Desc ;;
  }
}
