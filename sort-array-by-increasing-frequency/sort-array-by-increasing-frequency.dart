//Given a list of nums sort it by the number
//of occurences a given integer has in the list.
//If two integers have the same number of occurences
//then place them in the return list in reverse order
//based on the integer value.

//To solve this I created a hashmap to find the frequency
//of each value in the list. Then from there I iterated through
//that list to flip the places of the keys and values so
//the number of occurences becomes the key and the values
//that occur tht often are the values. Then from there I got
//a list of all possible lengths and sorted it. Using this I 
//took the lists out of the map and placed them into the return list
//making sure to retain the frequency of values in the new list(i.e. if there were 3 2's originally there should return 3 2's).

//Time: 294ms Beats: 100%
//Memory: 148.7MB Beats: 60%

class Solution {
  List<int> frequencySort(List<int> nums) {
      Map<int,int> num_frequency = {};
      for(int _num in nums){
          num_frequency[_num] = (num_frequency[_num] ?? 0) + 1;
      }
      Map<int,List<int>> frequencies = {};
      for(var entry in num_frequency.entries){
          List<int> current = (frequencies[entry.value] ?? []);
          current.add(entry.key);
          frequencies[entry.value] = current;
      }
      List<int> frequency_opts = frequencies.keys.toList();
      List<int> return_list = [];
      frequency_opts.sort();
      for(int i = 0 ; i < frequency_opts.length ; ++i){
          int current_freq = frequency_opts[i];
          List<int> vals_of_freq = (frequencies[current_freq] ?? []);
          vals_of_freq.sort();
          vals_of_freq = vals_of_freq.reversed.toList();
          for(int x = 0 ; x < vals_of_freq.length ; ++x){
              for(int z = 0 ; z < current_freq ; ++z){
                  return_list.add(vals_of_freq[x]);
              }
          }
      }
      return return_list;
  }
}
