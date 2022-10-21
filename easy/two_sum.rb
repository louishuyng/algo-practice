# frozen_string_literal: true

def two_sum(nums, target)
  nums = format_the_nums_ds(nums)

  result_index_one, result_index_two = process_two_sum(nums, target)

  puts "Result: [#{result_index_one}, #{result_index_two}]"
  [result_index_one, result_index_two]
end

def process_two_sum(nums, target)
  result_index_one = nil
  result_index_two = nil

  nums.each do |num|
    result_index_one = num[:index]
    match_number = target - num[:value]

    nums.each do |second_num|
      if second_num[:value] == match_number && second_num[:index] != result_index_one
        result_index_two = second_num[:index]
        break
      end
    end

    break if result_index_two
  end

  [result_index_one, result_index_two]
end

def format_the_nums_ds(nums)
  nums.each_with_index.map do |value, index|
    { value: value, index: index }
  end.sort_by { |num| -num[:value] }
end

two_sum([3, 2, 3], 6)
