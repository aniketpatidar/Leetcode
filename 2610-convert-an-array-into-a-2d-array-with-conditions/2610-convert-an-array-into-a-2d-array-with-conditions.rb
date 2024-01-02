# @param {Integer[]} nums
# @return {Integer[][]}
def find_matrix(nums)
  ans = []
  nums.each do |n|
    i = 0
    i += 1 until ans[i].nil? || !ans[i].include?(n)
    ans[i] ||= []
    ans[i] << n
  end
  ans
end