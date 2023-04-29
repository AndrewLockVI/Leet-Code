//Find the minimum depth to find a leaf and then return the depth.
//To solve this I used BFS to search each node on each layer until I found a leaf
//when a leaf is found I then return the current depth which is also the minimum depth.
//The worst case time complexity of this code is O(n) where n is the number of nodes in the tree
//Time: 220ms Beats: 98.72%
//Memory: 98.2MB Beats: 5.26%

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
 * @return {number}
 */


var minDepth = function(root) {
    let node_queue = [];
    let depth = 0;
    node_queue.splice(0,0,root);

    if(root == null){
        return 0;
    }
    if(root.left == null && root.right == null){
        return 1;
    }


    while(true){
        depth += 1;
        let start_len = node_queue.length;
        for(let i = 0 ; i < start_len ; ++i){
            let curr_node = node_queue.pop();
            if(curr_node.left == null && curr_node.right == null){
                return depth;
            }
            else{
                if(curr_node.left != null){
                    node_queue.splice(0,0,curr_node.left);
                }
                if(curr_node.right != null){
                    node_queue.splice(0,0,curr_node.right);
                }
            }
        }
    }

};
