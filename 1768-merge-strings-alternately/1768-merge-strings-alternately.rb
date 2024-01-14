# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    result = []
    n = [word1.length, word2.length].max
    (0...n).each do |i|
      result << word1[i] if i < word1.length
      result << word2[i] if i < word2.length
    end

    result.join
end