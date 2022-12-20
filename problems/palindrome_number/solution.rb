# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return true if x.zero? || x.positive? && x < 10
    return false if x.negative?

    power = Math.log10(x).to_i
    (0..[(power/2.0-1).ceil, 0].max).each do |z| 
        return false if x / 10**(power-z) % 10 != x / 10**z % 10
    end
    true
end






