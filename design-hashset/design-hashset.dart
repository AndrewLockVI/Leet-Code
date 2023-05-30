//Design your own hashset where you can add, remove, and
//check to see if a value is contained in the map all in constant* time.
//The time compexity of add, remove, contains are
//ideally constant, but there are many cases in which the
//efficency divulves into near O(n) search time. As an example
//if all values have the same hashed value then they all need
//to be traversed to find the value you are searching for.

//How does it work? Well when a key is added it is divided by 100
//and the remainder is what the hash value is. Given that every time
//the value is searched for the same hash appears this works albeit this solution
//is quite lazy because depending on the data set there may be lots of collisions.
//For removing you simply hash the value then find the key in the map and remove it.
//For contains you simply search the given hash index for the key.

//Time: 545ms Beats: 75%
//Memory: 177.3MB Beats: 75%
class MyHashSet {
  List<List<int>> hash_set = List.filled(100 , []);
  MyHashSet() {
  }
  
  void add(int key) {
      if(contains(key)){
          return;
      }
      ((hash_set[key%100]).add(key));
  }
  
  void remove(int key) {
      (hash_set[key%100]).remove(key);
  }
  
  bool contains(int key) {
      if((hash_set[key%100]).contains(key)){
          return true;
      }
      return false;
  }
}

