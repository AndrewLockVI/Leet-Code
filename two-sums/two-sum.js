//This is two sum hashtable solution using javascript.
//This algorithm has a worst case time complexity of O(n) where
//n is the number of values in the nums array.
//Time: 58ms Beats: 92.92%
//Memory: 42.8MB Beats: 39.35%


/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
    const my_map = {};
    for(let i = 0 ; i < nums.length ; ++i){
        
        let diff = target - nums[i];
        if(my_map[diff] == null){
            my_map[nums[i]] = i; 
        }
        else{
            return [i , my_map[diff]];
        }
    }
};
