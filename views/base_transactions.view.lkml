view: transactions_config {
  extends: [transactions_core]
  extension: required

  # Add view customisations here:
  derived_table: {
    datagroup_trigger: forever
    partition_keys: ["transaction_timestamp"]
    sql: SELECT Origin,Time_ID,Hour_ID,CM_Store_ID,CM_Country_ID,Client_id,Logistic_ID,Ticket_ID,Local_Currency_Code,Till_Number,Transaction_Number,Ticket_Client,Disc_Reason_Name,Gift_Card
    ,FARM_FINGERPRINT(CONCAT(Time_ID,Hour_ID,IFNULL(CAST(Ticket_ID AS STRING),''),IFNULL(Transaction_Number,''),IFNULL(CAST(CM_Store_ID AS STRING),''),IFNULL(Till_Number,''))) AS transaction_id
    ,PARSE_TIMESTAMP('%Y%m%d %H%M',CONCAT(time_id,' ',LPAD(CAST(hour_id AS STRING),4,'0'))) AS transaction_timestamp
    ,ARRAY_AGG(STRUCT(CM_Material_ID,CM_Supplier_ID,CM_Sales_Status_Id,CM_Local_Market_ID,CM_Storage_DC_ID,Purchase_status_id,Return_reason_Id,CM_Sales_type_ID,Transaction_Line_Number,Currency_Rate,Quantity,Purchase_Price_Sales_in_LC,Sales_VAT_in_LC,Sales_Ex_VAT_in_LC,Advised_Price_Sales_in_LC,Discount_in_LC,Brand_Theoritical_Selling_Price_in_LC,COGS_in_LC,Auto_Discount_ID)) AS detail_ticket
    FROM `@{SCHEMA_NAME}.@{TRANSACTIONS_TABLE_NAME}`
    GROUP BY 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16;;
  }

  dimension: transaction_id {
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: channel_id {
    sql: NULL ;;
  }

  dimension: customer_id {
    hidden: no
    sql: ${TABLE}.Client_id ;;
  }

  dimension: line_items {
    sql: ${TABLE}.detail_ticket ;;
  }

  dimension: store_id {
    sql: ${TABLE}.CM_STORE_ID ;;
  }

  dimension_group: transaction {
    sql: ${TABLE}.transaction_timestamp ;;
  }

  # Add your custom fields here:

  dimension: local_currency_code {}

}
