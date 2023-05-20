//Given an input n return k which is the kth factor of n.
//The time complexity of this code is O(n), but with constants
//it is O((n/2) + 1) which is pretty good.
//Time: 242ms Beats: 100%
//Memory: 138.6MB Beats: 100%

class Solution {
  int kthFactor(int n, int k) {
      List<int> factors = [];
      for(int i = 1 ; i <= n / 2 + 1 ; ++i){
          if(n % i == 0){
              factors.add(i);
          }
      }
      factors.add(n);
      if(factors.length > k - 1){
          return factors[k - 1];
      }
      return -1;
  }
}
