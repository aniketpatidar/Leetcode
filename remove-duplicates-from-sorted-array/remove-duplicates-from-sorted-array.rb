# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?

  write = 1
  (1...nums.length).each do |read|
    if nums[read] != nums[read - 1]
      nums[write] = nums[read]
      write += 1
    end
  end

  write
end