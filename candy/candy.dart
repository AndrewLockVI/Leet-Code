//Find how many candies each child gets based on their rating
//the time complexity of this code is O(n^2) where n is the number
//of children. 
//Time: TLE
//Memory: TLE
class Solution {
  int candy(List<int> ratings) {
      int required_candies = ratings.length;
      List<int> candies_given = [];
      for(int i = 0 ; i < ratings.length ; ++i){
          candies_given.add(1);
      }
      bool done = false;
      while(!done){
          done = true;
          for(int i = 0 ; i < ratings.length; ++i){
              if(i != 0){
                  if(candies_given[i] <= candies_given[i - 1] && ratings[i - 1] < ratings[i]){
                      candies_given[i] = candies_given[i] + 1;
                      required_candies += 1;
                      done = false;
                  }
              }
                if(i != ratings.length - 1){
                  if(candies_given[i + 1] >= candies_given[i] && ratings[i] > ratings[i + 1]){
                      candies_given[i] = candies_given[i] + 1;
                      required_candies += 1;
                      done = false;
                  }
              }

          }
      }
      return required_candies;
  }
}
