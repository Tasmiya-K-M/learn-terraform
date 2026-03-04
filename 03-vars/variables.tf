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

output "sample1_variable_value" {
  value = "the value of sample1 - ${var.sample1}"
}

# variable Data types
# 1. string
# 2. number
# 3. boolean

# Variable Types in Ansible - 1.Plain  2.List  3.Map/Dict (Map means list of dict)

# Variable Types in Terraform - 1.Plain  2.List  3.Map/Dict

# Plain
variable "course" {
    default = "Devops Training"
}

# List
variable "courses" {
  default = ["Devops","AWS","Python"]
}

# Map
variable "course_details" {
  default = {
    Devops = {
        name = "Devops",
        timings = "10am",
        duration = 90
    }
    AWS = {
        name = "AWS",
        timings = "11am",
        duration = 30
    }
  }
}


output "course" {
  value = var.course
}

output "courses" {
  value = var.courses
}

output "course_details" {
  value = var.course_details
}