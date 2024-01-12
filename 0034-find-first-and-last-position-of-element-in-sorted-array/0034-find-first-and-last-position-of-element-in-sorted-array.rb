# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  def binary_search(nums, target, find_first)
    start, end_index = 0, nums.length - 1
    result = -1

    while start <= end_index
      mid = start + (end_index - start) / 2

      if nums[mid] == target
        result = mid
        if find_first
          end_index = mid - 1
        else
          start = mid + 1
        end
      elsif nums[mid] < target
        start = mid + 1
      else
        end_index = mid - 1
      end
    end

    result
  end

  first_occurrence = binary_search(nums, target, true)
  last_occurrence = binary_search(nums, target, false)

  if first_occurrence <= last_occurrence
    [first_occurrence, last_occurrence]
  else
    [-1, -1]
  end
end