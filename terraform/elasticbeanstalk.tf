# key pair
resource "aws_key_pair" "app" {
  key_name = "app-prod" 
  public_key = "${file("${var.SSH_PUBLIC_KEY}")}"
}