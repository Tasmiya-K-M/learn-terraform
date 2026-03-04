variable "sample" {
  default = "hello world"
}

variable "sample1" {
    default = 1000
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = var.sample1
}