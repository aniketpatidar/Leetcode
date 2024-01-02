# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
    ans = Set.new
    nums.each_with_object(Hash.new(0)) do |num, freq|        
        two_sum(freq, -num).each do |pair|
            ans << [num, *pair].sort
        end
        freq[num] += 1
    end
    ans.to_a
end

def two_sum(freq, n)
    freq.keys.each_with_object([]) do |num, ans|
        next if freq[n - num] == 0
        next if n == num * 2 && freq[num] < 2
        ans << [num, n - num] 
    end
end