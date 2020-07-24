# frozen_string_literal: true

# Largest palindrome product
# Problem 4

# A palindromic number reads the same both ways.
#  The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

require 'pry'

def largest_palindrome_product(x = 999, y = 999, best = 1)
  return best if y == 100 # does not work under 990; stack overflow

  current = x * y

  if palindrome?(current) && current > best
    best = x * y
    p "new best: #{best} at #{x}x#{y}"
    x -= 1
  else
    if x == 100
      y -= 1
      x = 999
    else
      x -= 1
    end
  end

  largest_palindrome_product(x, y, best)
end

def palindrome?(number)
  number.to_s.split('').reverse.join == number.to_s
end

p largest_palindrome_product
