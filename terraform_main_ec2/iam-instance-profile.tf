resource "aws_iam_instance_profile" "instance-profile" {
  name = "shrirang-profile"
  role = aws_iam_role.iam-role.name
}
