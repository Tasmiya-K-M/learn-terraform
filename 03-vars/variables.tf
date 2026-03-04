variable "sample" {
  default = "hello world"
}

variable "sample1" {
    default = 1000
}

output "sample" {
  value = var.sample
  value = var.sample1
}