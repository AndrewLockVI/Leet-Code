//Given n number of people getting on a plane with n seats what are the odds
//that the nth passenger gets their original seat assuming the first person sits in a random
//seat.
//Time complexity is O(1). 
//This question is bad.
//Time: 272ms Beats: 100%
//Memory: 140.8MB Beats: 100%

class Solution {
  double nthPersonGetsNthSeat(int n) {
    if(n == 1){
      return 1;
    }
    else{
      return (.5); 
    }
  }
}
