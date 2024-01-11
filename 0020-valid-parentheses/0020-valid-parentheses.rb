# @param {String} s
# @return {Boolean}
def is_valid(s)
  return true if s.empty?

  stack = []
  opening_brackets = { ')' => '(', '}' => '{', ']' => '[' }

  s.each_char do |c|
    if opening_brackets.key?(c)
      return false if stack.pop() != opening_brackets[c]
    else
      stack.push(c)
    end
  end

  stack.empty?
end
