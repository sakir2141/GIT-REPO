resource "local_file" "devops" {
    filename = "/home/ec2-user/devops1"
    content = var.number
}