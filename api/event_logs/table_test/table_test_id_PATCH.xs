// Edit table test record
query "table_test/{table_test_id}" verb=PATCH {
  api_group = "Event Logs"

  input {
    int table_test_id? filters=min:1
    dblink {
      table = "table test"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "table test" {
      field_name = "id"
      field_value = $input.table_test_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $table_test
  }

  response = $table_test
  guid = "KWmn3Mvh3yJfDX7ORTmNSFi6mFE"
}