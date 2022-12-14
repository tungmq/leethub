# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  tmp_hash = {}
  nums.each_with_index do |num, index|
    tmp_hash[num] = index if tmp_hash[num].nil?
  end
  nums.each_with_index do |num, index|
    remain = target - num
    return [index, tmp_hash[remain]] if tmp_hash[remain] && tmp_hash[remain] != index
  end
  []
end