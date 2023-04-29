//Go through a binary tree and check if it is symetrical
//The time complexity of this code is O(n) where n is the number of
//nodes in the tree. This algorithm uses BFS to search layer by layer and verify
//that each layer is symetrical from the left and the right.

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
 * @return {boolean}
 */
let arr = new Array();
var isSymmetric = function(root) {
    let queue = [];
    queue.push(root);
    while(queue.length != 0){
        let queue_len = queue.length;
        let valid = false;
        for(let i = 0 ; i < queue_len ; ++i){
            let current_node = queue.pop();
            if(current_node != null){
                if(current_node.left != null){
                    queue.unshift(current_node.left);
                    valid = true;
                }
                else{
                    let tree1 = new TreeNode();
                    tree1.val = -1;
                    queue.unshift(tree1);
                }
                if(current_node.right != null){
                    queue.unshift(current_node.right);
                    valid = true;
                }
                else{
                    let tree = new TreeNode();
                    tree.val = -1;
                    queue.unshift(tree);
                }
            }
        }
        if(valid != true){
            return true;
        }
        if(queue.length != -1){
            if(symetrical(queue) == false){
                return false;
            }
        }
    }
    return true;
};
let symetrical = (arr) => {
    if(arr.length%2 != 0){
        return false;
    }
    for(let i = 0 ; i < arr.length / 2 + 1; ++i){
        if(arr[i].val != arr[arr.length - i - 1].val){
            return false;
        }
    }
    return true;
}
