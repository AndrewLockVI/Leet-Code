#158ms 50.27%
#18.76MB 72.31%

#This solution is a bit wordy. In a real environment I would just do the nlogn approach
#of squaring then sorting.

class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        count = 0
        negative = []
        positive = []
        returnList = []
        while count < len(nums) and nums[count] < 0:
            negative.append(nums[count] * nums[count])
            count += 1
        
        while count < len(nums):
            positive.append(nums[count] * nums[count])
            count += 1
        
        count = 0
        negativeIndex = len(negative) - 1
        positiveIndex = 0
        while count < len(nums) and negativeIndex >= 0 and positiveIndex < len(positive):
            if negative[negativeIndex] < positive[positiveIndex]:
                returnList.append(negative[negativeIndex])
                negativeIndex -= 1
            else:
                returnList.append(positive[positiveIndex])
                positiveIndex += 1
            count += 1
        
        while negativeIndex >= 0:
            returnList.append(negative[negativeIndex])
            negativeIndex -= 1

        while positiveIndex < len(positive):
            returnList.append(positive[positiveIndex])
            positiveIndex += 1

        return returnList

