//Given a string sort the characters by how many times they occur
//then return the new ordered string. To optimize my solution
//I would remove the entries from the map as they get used, but 
//given how fast this code runs it would be an unneccessary hassle given
//that removing entries from a list when it is being iterated is not allowed thus
//forcing me to track it with a list.
//Time: 312ms Beats: 75%
//Memory: 144.5MB Beats: 100%
class Solution {
  String frequencySort(String s) {
      Map<String, int> vals = {};
      List<int> usages_list = [];
      for(int i = 0 ; i < s.length ; ++i){
          vals[s[i]] = (vals[s[i]] ?? 0 ) + 1;
      }
      for(var entry in vals.entries){
        usages_list.add(entry.value);
      }
      usages_list.sort();
      usages_list = usages_list.reversed.toList();
      int current_itr = 0;
      String ret_str = "";
      while(current_itr < usages_list.length){
        for(var entry in vals.entries){
          if(entry.value == usages_list[current_itr]){
            ret_str += entry.key * usages_list[current_itr];
            current_itr += 1;
            if(current_itr >= usages_list.length){
              break;
            }
          }
        }
      }

      return ret_str;
  }
}
