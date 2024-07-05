# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hash = {}
    nums.each_with_index do |num, i|
        complement = target - num
        if hash[complement]
            return [hash[complement], i]
        end
        hash[num] = i
    end
end