//Find the number of similar elements in a list where 
//the similar items have only one character out of order
/**
 * @param {string[]} strs
 * @return {number}
 */
var numSimilarGroups = function(strs) {
    let similar = 0;
    
    for(let i = 0 ; i < strs.length; ++i){
        for(let x = i + 1; x < strs.length ; ++x){
            if(compare_words(strs[i] , strs[x])){
                similar += 1;
            }
        }
    }

    return similar;
};

function compare_words(str1 , str2){
    let different_vals = 0;
    for(let i = 0 ; i < str1.length ; ++i){
        if(str1[i] != str2[i]){
            different_vals += 1;
        }
        if(different_vals > 2){
            return false;
        }
    }
    return true;
}
