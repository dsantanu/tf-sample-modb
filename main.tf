##
variable "kb_item" {
  type        = string
  description = "Imported from TG"
}

variable "dependent_value" {
  type        = string
  description = "Imported from moda"
}

resource "local_file" "this" {
  content  = "Content from file: ${upper(var.dependent_value)}"
  filename = "${path.module}/${var.kb_item}_modb.txt"
}

output "file_name" {
  value = local_file.this.filename
}
