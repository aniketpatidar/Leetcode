# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    left = 0 
    right = height.length - 1
    maxArea = 0    
    while (left < right)
        maxArea = [[height[left], height[right]].min * (right - left), maxArea].max
        height[left] > height[right] ? right -= 1 : left += 1
    end
    maxArea
end