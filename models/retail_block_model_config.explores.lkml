explore: transactions_config {
  extends: [transactions_core]
  extension: required

  # Add additional joins here

  join: currency_conversion {
    relationship: many_to_one
    sql_on: ${transactions.local_currency_code} = ${currency_conversion.currency}
      AND ${transactions.transaction_date} = ${currency_conversion.currency_date};;
  }
}
