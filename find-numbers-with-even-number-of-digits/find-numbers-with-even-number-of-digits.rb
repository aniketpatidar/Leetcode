# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  even_digit_count = 0

  nums.each do |num|
    digit_count = 0
    while num > 0
      num /= 10
      digit_count += 1
    end

    if digit_count % 2 == 0
      even_digit_count += 1
    end
  end

  even_digit_count
end