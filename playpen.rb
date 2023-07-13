# frozen_string_literal: true

def add(a, b)
  a + b
end

add_five = method(:add).curry[5]

puts add_five.call(5)
# 10
puts add_five.call(20)
# 25