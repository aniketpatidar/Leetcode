# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
  doubled_s = (s + s)[1..-2]
  doubled_s.include?(s)
end