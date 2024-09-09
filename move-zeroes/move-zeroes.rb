# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  last_non_zero_found_at = 0
  
  nums.each_with_index do |num, i|
    if num != 0
      nums[last_non_zero_found_at], nums[i] = nums[i], nums[last_non_zero_found_at]
      last_non_zero_found_at += 1
    end
  end
end