//Shuffle an array where the input is (x1, x2, x3, y1 , y2, y3)
//and the output is (x1 , y1, x2, y2 , x3, y3). 
//The time complexity of my code is O(n) where n is the number
//of values in the input array.
//Runtime: 66ms Beats: 71.21%
//Memory: 44.6MB Beats: 45.7%

/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function(nums, n) {
    let x = new Array(n);
    let y = new Array(n);
    for(let i = 0 ; i < n ; ++i){
        x[i] = nums[i];
    }
    for(let i = 0 ; i < n ; ++i){
        y[i] = nums[i + n];
    }
    let count = 0;
    for(let i = 0 ; i < n * 2; ++i){
        nums[i] = x[count];
        ++i;
        nums[i] = y[count];
        count += 1;
        
    }
    return nums;
};
