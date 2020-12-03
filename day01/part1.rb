input = File.readlines("input.txt")

input.collect!(&:strip).collect!(&:to_i)

result = input.combination(2).find { |numbers| numbers[0] + numbers[1] == 2020 }
answer = result[0] * result[1]

pp answer