//Create the algorithm to switch bulbs from on to off.
//This is done by creating an array of length n. From there
//you need to iterate through the list and switch each value
//that is divisible by the current index then return the number of on
//switches. The time complexity of this code is O(n * sqrt(n))
//Runtime: 1801ms Beats: 5.17%
//Memory: 121.8MB Beats: 6.90%
/**
 * @param {number} n
 * @return {number}
 */
var bulbSwitch = function(n) {
    let bulbs = Array(n).fill(1);
    for(let i = 1; i < n ; ++i){
        for(let x = i ; x < n ; x += i + 1){
            bulbs[x] = bulbs[x] * -1;
        }
    }
    let on = 0;
    for(let i = 0 ; i < bulbs.length ; ++i){
        if(bulbs[i] == 1){
            on += 1;
        }
    }
    return on;
};
