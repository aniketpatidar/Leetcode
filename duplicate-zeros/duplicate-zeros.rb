# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  zeros = arr.count(0)
  
  n = arr.length
  for i in (n - 1).downto(0)
    if i + zeros < n
      arr[i + zeros] = arr[i]
    end
    
    if arr[i] == 0
      zeros -= 1
      if i + zeros < n
        arr[i + zeros] = 0
      end
    end
  end
end