view: customers_config {
  extends: [customers_core]
  extension: required

  # Unhide the fields that you have in your customer table

  dimension: id {sql: ${TABLE}.ID ;; }

  dimension: address { sql: ${TABLE}.address ;; hidden:yes}

  dimension: city { sql: ${TABLE}.CITY ;; hidden:yes}

  dimension: country { sql: ${TABLE}.COUNTRY ;; hidden:yes}

  dimension_group: registered { sql: ${TABLE}.CREATED_AT ;; hidden:yes}

  dimension: email { sql: ${TABLE}.EMAIL ;; hidden:yes}

  dimension: first_name { sql: ${TABLE}.FIRST_NAME ;; hidden:yes}

  dimension: gender { sql: ${TABLE}.GENDER ;; hidden:yes}

  dimension: last_name { sql: ${TABLE}.LAST_NAME ;; hidden:yes}

  dimension: latitude { sql: ${TABLE}.LATITUDE ;; hidden:yes}

  dimension: longitude { sql: ${TABLE}.LONGITUDE ;; hidden:yes}

  dimension: state { sql: ${TABLE}.STATE ;; hidden:yes}

  dimension: traffic_source { sql: ${TABLE}.TRAFFIC_SOURCE ;; hidden:yes}

  dimension: postcode { sql: ${TABLE}.ZIP ;; hidden:yes}

  # Add your custom fields here:
}
