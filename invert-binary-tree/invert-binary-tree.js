//For each split in a binary tree place the right node on the left
//and the left node on the right. Then return the final result
//To do this I used BFS to swap each node as I made by way down the tree
//The time complexity of this code is O(n) where n is the number of nodes in the tree
//Time: 55ms Beats: 79.68%
//Memory: 42.9MB Beats: 5.29%

/**
 * Definition for a binary tree node.
 * function TreeNode(val, left, right) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.left = (left===undefined ? null : left)
 *     this.right = (right===undefined ? null : right)
 * }
 */
/**
 * @param {TreeNode} root
 * @return {TreeNode}
 */
var invertTree = function(root) {
    if(root == null){
        return root;
    }


    let queue = [];
    queue.unshift(root);
    while(queue.length != 0){
        let length = queue.length;
        for(let i = 0 ; i < length ; ++i){
            let current = queue.pop();
            let left = null;
            let right = null;
            if(current.left != null){
                left = current.left;
            }
            if(current.right != null){
                right = current.right;
            }
            
            current.left = right;
            current.right = left;
            if(left != null){
                queue.unshift(left);
            }
            if(right != null){
                queue.unshift(right);
            }
        }
    }
    return root;
};
