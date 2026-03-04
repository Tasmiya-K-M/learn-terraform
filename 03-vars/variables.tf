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

# the value of variables + string  --> use ${variable}

output "sample_variable_value" {
  value = "te value of sample - ${var.sample}"
}