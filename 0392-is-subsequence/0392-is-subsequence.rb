# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    i = 0
    n = 0
    
    while i < s.length && n < t.length
        if s[i] == t[n]
            i += 1
        end
        n += 1
    end
    i == s.length
end