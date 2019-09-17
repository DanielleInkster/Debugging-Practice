def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    #n -= 1 <- subtracting before first product is produced
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
    n -= 1
  end
  product
end
puts factorial(5)
# Intended output:
#
# > factorial(5)
# => 120
