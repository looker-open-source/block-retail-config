explore: transactions_config {
  extends: [transactions_core]
  extension: required

  # Add additional joins here

  join: currency_conversion {
    relationship: many_to_one
    sql: ${transactions.local_currency_code} = ${currency_conversion.currency}
      AND ${transactions.transaction_date} BETWEEN ${currency_conversion.valid_from_date} AND ${currency_conversion.valid_to_date};;
  }
}
