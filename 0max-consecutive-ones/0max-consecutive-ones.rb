# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max_count = 0
  current_count = 0

  nums.each do |num|
    if num == 1
      current_count += 1
      max_count = [max_count, current_count].max
    else
      current_count = 0
    end
  end

  max_count
end