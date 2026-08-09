// Get table test record
query "table_test/{table_test_id}" verb=GET {
  api_group = "Event Logs"

  input {
    int table_test_id? filters=min:1
  }

  stack {
    db.get "table test" {
      field_name = "id"
      field_value = $input.table_test_id
    } as $table_test
  
    precondition ($table_test != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $table_test
  guid = "L9o2N9CQL2U1nBlyYMz4Kh4iFuo"
}