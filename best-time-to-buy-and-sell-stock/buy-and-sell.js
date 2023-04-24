//Find the best time to buy and sell a stock to maximize profits
//given a set of input times. To solve this you need to find
//the max difference. I did this by subtracting the min from every 
//value higher than it to see if that is larger than the current max
//if it is then max = currentmax - currentmin. 
//The time complexity of this code is O(n) where n is the length
//of the prices list.
//Runtime: 84ms Beats: 57.61%
//Memory: 51.2MB Beats: 91.18%

/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function(prices) {

    
    let return_val = 0;
    let max = prices[0];
    let min = prices[0];

    for(let i = 0 ; i < prices.length ; ++i){
        if(prices[i] < min){
            min = prices[i];
            max = 0;
        }
        if(prices[i] > max){
            max = prices[i];
        }
        if(max - min > return_val){
            return_val = max - min;
        }

    }
    return return_val;

};
