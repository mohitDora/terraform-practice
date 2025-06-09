resource "aws_dynamodb_table" "my_table" {
    name = "my-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
  
}