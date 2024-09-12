# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  expected = heights.sort
  count = 0
  
  heights.each_with_index do |height, i|
    count += 1 if height != expected[i]
  end
  
  count
end