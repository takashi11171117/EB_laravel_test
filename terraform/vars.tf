variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "ap-northeast-1"
}
variable "AWS_USERID" {
  default = ""
}
variable "SSH_PUBLIC_KEY" {
  default = "~/.ssh/terraform.pub"
}
