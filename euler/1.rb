# frozen_string_literal: true

# Multiples of 3 and 5
# Problem 1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_and_5(sum = 0, n = 1)
  p "n:#{n}"
  p "sum:#{sum}"

  return sum if n > 999

  sum += n if (n % 3).zero? || (n % 5).zero?
  multiples_of_3_and_5(sum, n + 1)
end
p multiples_of_3_and_5
