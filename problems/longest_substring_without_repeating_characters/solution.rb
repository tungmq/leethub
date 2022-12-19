# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    longest = 0
    count = 0
    tmp_hash = {}
    current_start = 0
    index = 0
    s.each_char do |char|
        if tmp_hash[char] && tmp_hash[char] >= current_start
            current_start = tmp_hash[char] + 1
            count = index - current_start + 1
        else
            count += 1
            longest = count if count > longest
        end
        tmp_hash[char] = index
        index += 1
    end
    longest
end
