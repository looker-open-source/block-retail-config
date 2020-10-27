view: customers_config {
  extends: [customers_core]
  extension: required

  # Unhide the fields that you have in your customer table

  dimension: id {sql: ${TABLE}.ID ;; }

  dimension: address { sql: ${TABLE}.address ;; hidden:yes}

  dimension: country { sql: ${TABLE}.COUNTRY ;; hidden:yes}

  dimension_group: registered { sql: ${TABLE}.CREATED_AT ;; hidden:yes}

  dimension: latitude { sql: ${TABLE}.LATITUDE ;; hidden:yes}

  dimension: longitude { sql: ${TABLE}.LONGITUDE ;; hidden:yes}

  # Add your custom fields here:
}
