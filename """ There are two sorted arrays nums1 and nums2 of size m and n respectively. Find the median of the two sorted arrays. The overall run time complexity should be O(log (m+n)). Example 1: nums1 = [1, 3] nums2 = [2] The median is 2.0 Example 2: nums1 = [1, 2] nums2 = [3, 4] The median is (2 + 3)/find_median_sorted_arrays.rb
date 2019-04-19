=begin
There are two sorted arrays nums1 and nums2 of size m and n respectively.
Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).
Example 1:
nums1 = [1, 3]
nums2 = [2]
The median is 2.0
Example 2:
nums1 = [1, 2]
nums2 = [3, 4]
The median is (2 + 3)/2 = 2.5
=end
def find_median_sorted_arrays(nums1, nums2)
  nums = nums1.push(nums2).flatten
    nums.sort!
    if nums.length % 2 == 0 && nums.length > 2
        return  (nums[nums.length/2] + nums[nums.length/2 -1])/2.0
    else
        if  nums.length == 1
            return nums[-1]
        end
        if nums.length == 2
            return (nums[0] + nums[1])/2.0
        end
        media = nums[nums.length/2]
        
        return nums[nums.length/2].to_f
    end
end

nums1 = [1, 2]
nums2 = [3, 4]

p "The median is #{find_median_sorted_arrays(nums1,nums2)}"
