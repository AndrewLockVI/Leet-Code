//This is my solution to the minimum work sessions problem using
//DFS and backtracking. The goal is to find the minimum number of sessions
//to completed the tasks where you can not split task time between multiple sessions
//and the length of each session is sessionTime.
//This gives a TLE because it is very brute force.

class Solution {
  int minSessions(List<int> tasks, int sessionTime) {
      Map<int,int> vals = {};
      for(int i = 0; i < tasks.length ; ++i){
          vals[tasks[i]] = (vals[tasks[i]] ?? 0) + 1;
      }
      int sessions = (vals[sessionTime] ?? 0);
      Map<String,int> memo = {};
      tasks.sort();
      tasks = tasks.sublist(0,tasks.length - sessions);
      return minSess(tasks , sessionTime, 0,sessions);
  }
  int minSess(List<int> tasks , int sessionTime, int currentTime, int sessions){
      if(tasks.length == 0){
          return sessions;
      }
      int ret_val = 1000000000;
      for(int i = 0 ; i < tasks.length ; ++i){
          if(tasks[i] > currentTime){
              List<int> new_tasks = List.from(tasks);
              new_tasks.removeAt(i);
              int current = minSess(new_tasks, sessionTime, sessionTime - tasks[i] , sessions + 1);
              if(current < ret_val){
                  ret_val = current;
              }
          }
          else{
              List<int> new_tasks = List.from(tasks);
              new_tasks.removeAt(i);
              int current = minSess(new_tasks, sessionTime, currentTime - tasks[i] , sessions);
              if(current < ret_val){
                  ret_val = current;
              }
          }
      }
      return ret_val;
  }
}
