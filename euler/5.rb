# frozen_string_literal: true

# Smallest multiple
# Problem 5

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(number, n = 1)
  return number if n == 20

  p "n:#{n}"
  p "number:#{number}"
  number = number.lcm(n)
  smallest_multiple(number, n + 1)
end

p smallest_multiple(20)
