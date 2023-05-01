//Better solution than sort solution where you iteate through
//the list one time tracking the highest and lowest vals.
//Then at the end subtract those from the total and return the mean.
//The time complexity of this code is O(n) where n is the length of the list
//Time: 260ms Beats: 80.77%
//Memory: 141.9MB Beats: 30.77% 
class Solution {
  double average(List<int> salary) {
      int lowest = salary[0];
      int highest = salary[0];
      int total = 0;
      for(int i = 0 ; i < salary.length  ; ++i){
        if(salary[i] < lowest){
          lowest = salary[i];
        }
        else if(salary[i] > highest){
          highest = salary[i];
        }
        total += salary[i];
      }
      total = total - (highest + lowest);

      return total / (salary.length - 2);
  }
}
