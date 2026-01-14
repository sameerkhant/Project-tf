resource "aws_iam_user" "this" {
  for_each = toset(var.users)
  name     = each.key
  path     = "/"
}