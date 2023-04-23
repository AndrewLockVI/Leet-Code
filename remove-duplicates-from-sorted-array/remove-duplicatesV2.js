//This is a better implementation that runs in linear time O(n).
//My other implementation required splicing of the array which reordered
//the entire array everytime a duplicate was found, but this way only
//unique values are saved to a new list then they are placed back in the
//input one. Another way to do this would be by using a set, but both
//implementations are the same in time complexity and space complexity.
//Runtime: 64ms Beats: 89.74%
//Memory: 44.6MB Beats: 68.36%


/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {
    let l2 = [nums[0] , ];
    let vals = 1;
    for(let i = 1 ; i < nums.length ; ++i){
        if(nums[i] == nums[i - 1]){
            continue;
        }
        else{
            l2[vals] = nums[i];
            vals += 1;
        }
    }
    for(let i = 0 ; i < l2.length ; ++i){
        nums[i] = l2[i];
    }
    return vals;
};
