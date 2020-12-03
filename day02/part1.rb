input = File.readlines("input.txt")

input.collect!(&:strip).collect!(&:split)

results = input.keep_if do |element|
  numbers = element[0].split("-").collect!(&:to_i)
  letter = element[1].tr!(":", "")
  password = element[2]

  # regex = Regexp.new("#{letter}{#{numbers[0]},#{numbers[1]}}")

  # pp regex

  # password.match(regex)
  total = password.count(letter)

  is_valid = total >= numbers[0] && total <= numbers[1]
  puts "letter: #{letter}; total: #{total}; number[0]: #{numbers[0]}; numbers[1]: #{numbers[1]}; password: #{password}; is_valid: #{is_valid}"

  is_valid
end

# pp results

pp results.length
pp input.length