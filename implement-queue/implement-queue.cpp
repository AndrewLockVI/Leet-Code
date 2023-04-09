#include <list>
#include <iostream>






using namespace std;


//Leet Ratings
//       Speed  Memory
//Total  2ms    7MB    
//Beats  43.74% 45.49%
//Impletmentation of a queue class using a doubly linked list.

class MyQueue {
public:
    list<int> sl = {};
    
    void push(int x) {
        sl.push_front(x);
    }
    
int pop() {
    if (sl.size() != 0) {
        int value = sl.back();
        sl.pop_back();
        return value; 
    } else {
        return pop();
    }
}
    
    int peek() {
        return sl.back();
    }
    
    bool empty() {
        return sl.empty();
    }
};





int main(){
    auto queue = MyQueue();
    queue.push(10);
    cout << queue.pop() << endl;
    queue.push(13);
    queue.push(124);
    cout << queue.empty() << endl;
    cout << queue.pop() << endl;


}
