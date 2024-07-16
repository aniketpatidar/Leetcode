# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
    num1 = nums1 - nums2
    num2 = nums2 - nums1
    [num1.uniq, num2.uniq]
end