// Delete table test record.
query "table_test/{table_test_id}" verb=DELETE {
  api_group = "Event Logs"

  input {
    int table_test_id? filters=min:1
  }

  stack {
    db.del "table test" {
      field_name = "id"
      field_value = $input.table_test_id
    }
  }

  response = null
  guid = "RCMvRHs6-FP7miUtAerb_giyf4Q"
}