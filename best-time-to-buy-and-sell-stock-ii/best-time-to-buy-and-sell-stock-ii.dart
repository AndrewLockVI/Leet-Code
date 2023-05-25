//Given a list of prices and a maximum number of stocks owned at a time as 0
//return the max amount of money you can make by the end of the week assuming
//you can buy and sell on any day. This is the brute force recursive solution
//I will optimize this with memoization to beat the problem.
//Time: TLE
//Memory: TLE
class Solution {
  int maxProfit(List<int> prices) {
     return max(prices, 0, 0); 
  }
  int max (List<int> prices, int owned, int val){
      if(prices.length == 0){
          return val;
      }
      int buy_or_sell = 0;
      if(owned == 1){
        buy_or_sell = max(prices.sublist(1), 0 , val + prices[0]);
      }
      else{
        buy_or_sell = max(prices.sublist(1), 1, val - prices[0]);
      }
      int hold = max(prices.sublist(1) , owned, val);

      if(buy_or_sell > hold){
        return buy_or_sell;
      }
      return hold;
  }
}
