// Query all TRANSAÇÃO records
query transa_o verb=GET {
  api_group = "Event Logs"

  input {
  }

  stack {
    db.query "TRANSAÇÃO" {
      return = {type: "list"}
    } as $transa_o
  }

  response = $transa_o
  guid = "YuOPRIj8oKpV9E1D_Au7IaiS3xY"
}