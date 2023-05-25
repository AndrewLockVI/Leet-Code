//Apparently DP and memoization are not fast enough for this problem. This is understandable
//but kind of annoying.
//Time: TLE
//Memory: TLE
class Solution {
  int maxProfit(List<int> prices) {
     return max(prices, 0, 0, {}); 
  }
  int max (List<int> prices, int owned, int val, Map<String, int> memo){
      String mem = prices.length.toString() + " " + owned.toString();
      if(val < (memo[mem] ?? -100000000)){
        return -100000000;
      }
      else{
        memo[mem] = val;
      }
      String curr_str = prices.length.toString() + " " + owned.toString();
      if(prices.length == 0){
          return val;
      }
      int buy_or_sell = 0;
      if(owned == 1){
        buy_or_sell = max(prices.sublist(1), 0 , val + prices[0], memo);
      }
      else{
        buy_or_sell = max(prices.sublist(1), 1, val - prices[0], memo);
      }
      int hold = max(prices.sublist(1) , owned, val, memo);
      if(buy_or_sell > hold){
        return buy_or_sell;
      }
      return hold;
  }
}
