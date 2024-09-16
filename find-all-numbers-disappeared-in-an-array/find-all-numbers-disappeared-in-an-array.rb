# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  n = nums.length
  
  nums.each do |num|
    index = num.abs - 1
    nums[index] = -nums[index] if nums[index] > 0
  end

  (1..n).select { |i| nums[i - 1] > 0 }
end