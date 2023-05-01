//Find the mean value of the list excluding the largest and smallest values.
//I solved this by sorting the list then iterating through excluding the first and last values.
//The time complexity of this code is O(nlog(n) where n is the number of values in the list.
//To optimize this solution I will complete it again iterating through the list one time instead of sorting first.
//Time: 268ms Beats: 57.69%
//Memory: 141.4MB Beats: 61.54%

class Solution {
  double average(List<int> salary) {
      salary.sort();
      int total = 0;
      for(int i = 1 ; i < salary.length - 1 ; ++i){
        total += salary[i];
      }

      return total / (salary.length - 2);
  }
}
