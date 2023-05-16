//Return the minimum cost of traveling on a train 
//for n days where n are the values in the days list.
//The ticket prices vary depending on the length they are good for.
//There is a week pass, month pass, and day pass each of which
//makes it so you can ride on the train for a given number of days
//in a row. To solve this I used recursion along with memoization
//to find the minimum cost from each day working my way backwards until finding
//the minimum cost from the first day.
//The time compexity of this code is O(n) where n is the number of nodes in the list.
//Time: 296ms Beats: 62.50%
//Memory: 145.1MB Beats: 25%
class Solution {
  Map<int, int> memo = {};
  int mincostTickets(List<int> days_, List<int> costs) {
      if(memo[days_.length] != null){
          int return_int = (memo[days_.length] ?? 0);
          return return_int;
      }

      List<int> days = List.from(days_);
      if(days.length == 0){
          return 0;
      }
      int date = days[0];
      days.removeAt(0);
      int one_day = mincostTickets(days, costs);

      for(int i = 0 ; i < days.length ; ++i){
          if(days[i] < date + 7){
              days.removeAt(0);
              --i;
          }
          else{
              break;
          }
      }
      int week = mincostTickets(days , costs);

      for(int i = 0 ; i < days.length ; ++i){
          if(days[i] < date + 30){
              days.removeAt(0);
              --i;
          }
          else{
              break;
          }
      }
      int month = mincostTickets(days, costs);
      month += costs[2];
      week += costs[1];
      one_day += costs[0];
      int return_val = 0;
      if(month <= one_day && month <= week){
          return_val = month;
      }
      else if(one_day <= month && one_day <= week){
          return_val = one_day;
      }
      else{
          return_val = week;
      }

      memo[days_.length] = return_val;
      return return_val;

  }
}
