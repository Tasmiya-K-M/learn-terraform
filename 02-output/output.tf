output "sample" {
  value = "Hello World"
}

# any string value in terraform need to be quoted by double quotes
# single quotes not supported

# numeric and boolean (true,false)
output "name" {
  value = 1000
}


# to aviod yes or no while running terraform apply use ---> terraform apply -auto-approve
# terraform init, terraform plan  ---> no creation of state file
# terraform apply ---> will create state file


  
