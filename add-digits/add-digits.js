//Add the digits of an inputted integer until
//the output is a number 1-9 then return that value.
//The time complexiy of this code is O(log(n)) where n is the input number
//The true time complexity is O(log10N) where the output would be the number
//of digits in the value, but since we are talking big O notation the constant
//does not get factored in.
//Time: 61ms Beats: 93.60%
//Memory: 43.3MB Beats: 92.76%

var addDigits = function(num) {
    while(num >= 10){
        num = add_vals(num);
    }
    return num;
};

function add_vals(num) {
    let ret_val = 0;
    while(num > 0){
        ret_val += num % 10;
        num = Math.floor(num / 10);
    }
    return ret_val;
}
