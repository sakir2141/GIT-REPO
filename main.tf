resource "local_file" "file" {
        filename = "${path.module}/file1.txt"
        content = var.sakir
}
