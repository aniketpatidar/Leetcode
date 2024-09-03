# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  k = 0
  
  nums.each_with_index do |num, i|
    if num != val
      nums[k] = num
      k += 1
    end
  end
  
  k
end