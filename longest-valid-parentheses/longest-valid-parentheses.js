//This is the brute force to a problem which is to find the longest set of valid parenthesis in a 
//list of parenthesis. The time complexity of this code is O(n^2) where n is the length of the string.
//This is because for every value you have to iterate through all others values in the worst case.
//Time: 3027ms Beats: 5.3%
//Memory: 82.5MB Beats: 5.3%

/**
 * @param {string} s
 * @return {number}
 */
var longestValidParentheses = function(s) {
    let longest = 0;
    for(let i = 0 ; i < s.length ; ++i){
        let current_string = s.substring(i);
        let check_val = check_valid(current_string);
        if(check_val > longest){
            longest = check_val; 
        }
    }
    return longest;
};

function check_valid(s){
    let max = 0;
    let curr_max = 0;
    let vals = [];
    for(let i = 0 ; i < s.length ; ++i){
        let curr = s[i];
        if(curr == '[' || curr == '{' || curr == "("){
            vals.push(curr);
        }
        else{
            if (vals.length == 0) {
                return max;
            }
            let popped = vals.pop();
            if(
                popped == '[' && curr != ']' ||
                popped == '(' && curr != ')' ||
                popped == '{' && curr != '}'
                ){
                    return max;
                }
            else{
                curr_max += 2;
            }
        }
        if(vals.length == 0){
            max = curr_max;
        }
    }
    return max;
}
