# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
  evens = nums.select { |num| num.even? }
  odds = nums.select { |num| num.odd? }
  evens + odds
end