# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
   t.each_char { |x| return x if t.count(x) != s.count(x) } 
end