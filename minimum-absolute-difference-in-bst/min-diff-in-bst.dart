//Given a tree return the minimum difference between any
//two nodes in the tree. To solve I first traversed the tree and placed all
//vals into a list. I could have done in order so I did not need to sort, but
//really it does not speed this up much. I then did a greedy algorithm to iterate
//through the sorted list to find the smallest difference in the list and returned 
//that value.

//Time: 306ms Beats: 100%
//Memory: 148.9MB Beats: 100%

class Solution {
    List<int> vals = [];

    int getMinimumDifference(TreeNode? root) {
        recurse(root);
        vals.sort();
        int min = 10000000;
        for (int i = 1; i < vals.length; ++i) {
            if (vals[i] - vals[i - 1] < min) {
                min = vals[i] - vals[i - 1];
            }
        }
        return min;
    }

    void recurse(TreeNode? root) {
        if (root == null) {
            return;
        }
        vals.add(root.val);
        recurse(root.right);
        recurse(root.left);
    }
}
