input = File.readlines("input.txt")

input.collect!(&:strip).collect!(&:to_i)

def find_product_of_combinations_that_add_to(data, sum, combo)
  result = data.combination(combo).find { |numbers| numbers.sum == sum }
  result.reduce { |total, value| total * value }
end

puts find_product_of_combinations_that_add_to(input, 2020, 2)
puts find_product_of_combinations_that_add_to(input, 2020, 3)