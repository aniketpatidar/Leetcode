# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  @result = []
  @n = n
  generate('(')

  @result
end

def generate s='('
  if s.length == @n*2
    @result << s 
    return
  end

  open = s.count('(')
  close = s.count(')')

  if open == close
    generate("#{s}(")
  elsif open == @n
    generate("#{s})")
  else
    generate("#{s}(")
    generate("#{s})")
  end
end