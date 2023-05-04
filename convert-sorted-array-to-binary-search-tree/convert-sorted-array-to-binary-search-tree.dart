//Take an input list called nums and convert it to a binary search tree.
//The time complexity of this is O(n) where n is the number of values in the list.
//Time: 257ms Beats: 71.43%
//Memory: 143.6MB Beats: 57.14%
class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    if(nums.isEmpty){
      return null;
    }
    TreeNode root = new TreeNode();
    int mid = (nums.length / 2).toInt();
    root.val = nums[mid];
    TreeNode? left = sortedArrayToBST(nums.sublist(0 , mid));
    TreeNode? right = sortedArrayToBST(nums.sublist(mid + 1));
    root.left = left;
    root.right = right;
    return root;
  }
}
