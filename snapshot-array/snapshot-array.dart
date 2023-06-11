//Create a class that implements the following interface:

//Ability to create list of length length
//Ability to set a given index to a certain val
//Ability to take a snapshot of the current list.
//Ability to get a given index of a given snapshot.

class SnapshotArray {
  List<List<int>> lists = [];
  SnapshotArray(int length) {
      lists.add(List.filled(length , 0));
  }
  
  void set(int index, int val) {
    lists[lists.length - 1][index] = val;
  }
  
  int snap() {
    lists.add(List.from(lists[lists.length - 1]));
    return lists.length - 2;
  }
  
  int get(int index, int snap_id) {
    return (lists[snap_id][index]);
  }
}
