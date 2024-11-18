output "result" {
  value = {
    mul  = local.double_numbers
    even = local.even_num
    odd  = local.odd_num
  }
}