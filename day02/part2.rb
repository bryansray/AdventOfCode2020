input = File.readlines("input.txt")

input.collect!(&:strip).collect!(&:split)

results = input.keep_if do |element|
  numbers = element[0].split("-").collect!(&:to_i)
  letter = element[1].tr!(":", "")
  password = element[2]

  first_is_valid = password[numbers[0] - 1] == letter
  second_is_valid = password[numbers[1] - 1] == letter

  is_valid = (!(first_is_valid && second_is_valid)) && (first_is_valid || second_is_valid)

  # puts "letter: #{letter}; letter_at: #{password[numbers[0] - 1]}, #{password[numbers[1] - 1]}; number[0]: #{numbers[0]}; numbers[1]: #{numbers[1]}; password: #{password}; is_valid: #{first_is_valid} - #{second_is_valid} - is_valid #{is_valid}"

  is_valid
end

# pp results

pp results.length