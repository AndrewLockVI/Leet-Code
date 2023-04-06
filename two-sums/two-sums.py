
"""
Leet Ratings
       Speed  Memory
Total  1005ms   15MB    
Beats  38.22% 67.55%

"""

def twoSum( nums: list[int], target: int):
    count1 = len(nums) - 1
    count2 = len(nums) - 1
    while count1 >= 0:
        count2 = len(nums) - 1
        while count2 >= 0:
            if nums[count1] + nums[count2] == target and count1 != count2:
                return [count1, count2]
            count2 -= 1
        count1 -= 1
    return [0,0]


nums = [0 , 1 , 4, 5 ,7 , 67]


print(twoSum(nums , 67))
