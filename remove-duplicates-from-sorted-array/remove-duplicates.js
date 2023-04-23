//Remove duplicate values from an array and return the number of unique values.
//This algorithm has a worst case time complexity of O(n^2) where n is the length of the
//array. This is because in a worst case the array would be spliced every time thus forcing
//a mem copy of the entire array every time.
//Runtime: 128ms Beats:24.88%
//Memory: 45.6MB Beats: 9.34%

/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function(nums) {
    let unique_vals = 0;
    for(let i = 0 ; i < nums.length; ++i){
        if(nums[i] == nums[i + 1]){
            nums.splice(i+1 , 1);
            i--;
        }
        else{
            unique_vals += 1;
        }
    }
    return unique_vals;
};
