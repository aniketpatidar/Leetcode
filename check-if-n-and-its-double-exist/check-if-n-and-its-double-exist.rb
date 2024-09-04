# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
  seen = {}
  arr.each do |num|
    return true if seen.key?(num * 2) || (num.even? && seen.key?(num / 2))
    
    seen[num] = true
  end
  false
end