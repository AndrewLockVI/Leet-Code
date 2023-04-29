//Given a binary tree return the values in it as an array of arrays
//where each array is a single layer of the tree.
//Ex.    
//      2
//     3 4
//    6   8
//Output of the above tree would be: [[2][3,4][6,8]]
//My solution uses BFS to traverse each layer adding all of the values to an array
//the time complexity of this is O(n) where n is the number of listnodes in the tree.
//Time: 60ms Beats: 82.33%
//Memory: 44.8MB Beats: 12.51%

var levelOrder = function(root) {
    if(root == null){
        return [];
    }
    if(root.left == null && root.right == null){
        return [[root.val]];
    }
    let levels = [];
    let queue = new Array();
    let level = 0
    queue.splice(0,0,root);
    while(queue.length != 0){
        let start_len = queue.length;
        levels.push([]);
        for(let i = 0 ; i < start_len ; ++i){
            let curr_node = queue.pop();
            levels[level].push(curr_node.val);
            if(curr_node.left != null){
                queue.splice(0,0,curr_node.left);
            }
            if(curr_node.right != null){
                queue.splice(0,0,curr_node.right);
            }
        }
        level += 1;
    }
    return levels;
};
