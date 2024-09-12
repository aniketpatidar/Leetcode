# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  distinct_nums = nums.uniq
  if distinct_nums.length < 3
    return distinct_nums.max
  end

  distinct_nums.sort[-3]
end