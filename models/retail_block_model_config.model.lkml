# shouldn't be specifying connection:
connection: "retail-block-connection"

explore: transactions_config {
  extends: [transactions_core]
  extension: required
  # Add additional joins here
}
