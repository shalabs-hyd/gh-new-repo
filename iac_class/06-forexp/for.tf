locals {
  double_numbers = [for i in var.numbers_list : i * 2]
  even_num       = [for i in var.numbers_list : i if i % 2 == 0]
  odd_num        = [for i in var.numbers_list : i if i % 2 != 0]

}