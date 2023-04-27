//Manual solution finding sqrt without built in method.
//Runtime: 64ms Beats: 12.7%
//Memory: 42.3MB Beats: 6.90%
/**
 * @param {number} n
 * @return {number}
 */
var bulbSwitch = function(n) {
    let sqrt = 0;
    if(n == 0){
        return 0;
    }
    if(n <= 3){
        return 1;
    }
    for(var i = 0 ; i < n / 2 + 2; ++i){
        if(i * i > n){
            return i - 1;
        }
    }


    return 0;
};
