# @param {String} s
# @return {Integer}
def my_atoi(str)
   [-2**31, str.to_i, 2**31-1].sort[1]
end