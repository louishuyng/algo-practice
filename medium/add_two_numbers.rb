# frozen_string_literal: true

class ListNode
  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def add_two_numbers(l1, l2)
  a1 = traversel(l1)
  a2 = traversel(l2)
  number1 = a1.reverse.join.to_i
  number2 = a2.reverse.join.to_i

  result = (number1 + number2).to_s.split('').map(&:to_i).reverse
  puts "Result: #{result}"
  result
end

def traversel(l)
  result = []

  until l.nil?
    result << l.val
    l = l.next
  end

  result
end
