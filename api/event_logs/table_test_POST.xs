// Add table test record
query table_test verb=POST {
  api_group = "Event Logs"

  input {
    dblink {
      table = "table test"
    }
  }

  stack {
    db.add "table test" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $table_test
  }

  response = $table_test
  guid = "8XZ4ZT77cCT1gkGM4HNdxvjiY3w"
}