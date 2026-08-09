// Query all table test records
query table_test verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query "table test" {
      return = {type: "list"}
    } as $table_test
  }

  response = $table_test
  guid = "xP0xV-xXZ6VOBC95Ma5POn7n3xc"
}