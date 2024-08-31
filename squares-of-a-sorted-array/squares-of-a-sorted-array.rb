# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  result = Array.new(nums.length)
  left, right = 0, nums.length - 1
  index = right

  while left <= right
    if nums[left].abs > nums[right].abs
      result[index] = nums[left] ** 2
      left += 1
    else
      result[index] = nums[right] ** 2
      right -= 1
    end
    index -= 1
  end

  result
end