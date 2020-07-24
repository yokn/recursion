# frozen_string_literal: true

def fibs_rec(number)
  return 0 if number == 1
  return 1 if number < 3

  fibs_rec(number - 1) + fibs_rec(number - 2)
end

puts fibs_rec(1)
puts fibs_rec(2)
puts fibs_rec(3)
puts fibs_rec(4)
puts fibs_rec(5)
puts fibs_rec(10)
puts fibs_rec(30)
