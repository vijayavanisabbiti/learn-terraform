variable "sample1" {
  default = "hello"
}

output "sample1" {
  value = var.sample1
}

variable "fruits" {
  default = ["apple", "banana", "orange"]
}

output "fruits_first_name" {
  value = var.fruits[0]
}

variable "fruits_with_quantity" {
  default = {
    apple = 100
    banana = 200
    orange = 300
  }
}

output "fruits_with_quantity" {
  value = var.fruits_with_quantity["apple"]
}

output "fruits_apple_quantity_with_name" {
  value = "Fruit apple is having only ${var.fruits_with_quantity["apple"]} quantity"
}