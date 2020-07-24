# frozen_string_literal: true

# Largest prime factor
# Problem 3

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(number, n = 1)
  initial_number = number
  p "n:#{n}"
  p "number:#{number}"
  number /= n if (number % n).zero?
  # https://projecteuler.net/overview=003
  # "...every number n can at most have one prime factor greater than sqrt(n)."
  return n if number < Math.sqrt(initial_number)

  largest_prime_factor(number, n + 1)
end

# requires a "composite number"

p largest_prime_factor(600_851_475_143)
p largest_prime_factor(12)
p largest_prime_factor(360)
p largest_prime_factor(1001)
p largest_prime_factor(6_746_328_388_800)
p largest_prime_factor(195_643_523_275_200)
