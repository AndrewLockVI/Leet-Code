//This is a simple javascript class that can be used to create a 
//stack in javascript that employs the basid pop, push, empty, and top methods
//The time complexity of this code is O(n) where n is the number of requested actions to
//be ran on the list.
//Time: 52ms Beats: 81.38%
//Memory: 42.3MB Beats: 8.20%

var MyStack = function() {
    this.list = [null];
};

MyStack.prototype.push = function(x) {
    this.list.push(x);
};
MyStack.prototype.pop = function() {
    return this.list.pop();
};
MyStack.prototype.top = function() {
    return this.list[this.list.length - 1];
};
MyStack.prototype.empty = function() {
    if(this.list.length == 0){
        return true;
    }

    for(let i = 0 ; i < this.list.length ; ++i){
        if(this.list[i] != null){
            return false;
        }
    }
    return true;
};
