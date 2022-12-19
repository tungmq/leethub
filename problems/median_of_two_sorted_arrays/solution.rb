# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums1_count = nums1.count
    nums2_count = nums2.count
    return 0 if nums1_count.zero? && nums2_count.zero?

    merged = []
    total_elements = nums1_count + nums2_count
    (0..total_elements - 1).each do
        if nums2.count == 0 || (nums1.count > 0 && nums1.last > nums2.last)
            merged << nums1.pop
        else
            merged << nums2.pop
        end
    end
    mid = total_elements / 2
    total_elements.even? ? (merged[mid] + merged[mid - 1]) / 2.0 : merged[mid]
end
