class Solution:
    def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:
        
        d = {}
        res = []
        
        for n in nums1:
            d[n] = 1
            
        for n in nums2:
            if n in d and d[n]:
                res.append(n)
                d[n] -= 1
                
        return res
        
"""
nums1 = [1,2,2,1]
nums2 = [2,2]

d={1:1, 2:1}

len(nums1)=n
len(nums2)=m
time: O(n+m)
Space: O(n)

"""
