//Find the longest increasing subsequence contained in a list.
//I did this using recursion in O(n^2) time utilizing memoization to 
//decrease required overhead.
//Time: 4903ms Beats: 33.33%
//Memory: 183.2MB Beats: 66.67%
class Solution {
    int lengthOfLIS(List<int> nums) {
        return(lengthOfList(nums , -1000000 , 0, {}));
    }

    int lengthOfList(List<int> nums, int highest, int index, Map<String, int> memo){
        if(nums.length == 0){
            return 0;
        }
        String current_str = highest.toString() + " " + index.toString();
        if(memo[current_str] != null){
            int current_int = (memo[current_str] ?? 0);
            return current_int;
        }
        int max = 0;
        for(int i = index ; i < nums.length ; ++i){
            if(nums[i] > highest){
                int current = lengthOfList(nums, nums[i] , i , memo) + 1;
                if(current > max){
                    max = current;
                }
            }
        }
        memo[current_str] = max;
        return max;
    }
}
