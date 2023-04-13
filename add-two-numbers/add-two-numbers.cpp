#include <iostream>
#include <vector>
using namespace std;
//This problem was to take the values in two different singly
//linked lists and add the values together in each index. The lists were in reverse order
//so as you move to the right the values greater than 10 are carried to the right(As opposed to
//carrying 10s to the left which is the normal way we count).

//Leetcode:
//Speed: 27ms Beats: 93.80%
//Memory: 70.8MB Beats: 99.41%
//This was a challenge but I learned a lot about pointers and instantiating objects.

//Output:
//Added Lists:
//0 3 6 0 5 0 9 1
//


//This is the structure of a single node of the linked list
//it contains the value of the current node and a pointer to the next one.
struct ListNode {
    int val;
    ListNode *next;
};


//Takes an input which are ponters to the first node of a list.
ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
    
    //Need refrence to the first node because there is no way
    //back to the start once you start iterating the list.
    ListNode* first_node = l1;
    int carry = 0;
    ListNode* last_pointer;
    while(l1 != NULL and l2 != NULL){
        l1->val = l1->val + l2->val + carry;
        carry = l1->val / 10;
        l1->val = l1->val % 10;
        l2 = l2->next;
        last_pointer = l1;
        l1 = l1->next;
    }
    //This runs if the first list is longer than the second.
    while (l1 != NULL){
        l1->val = l1->val + carry;
        carry = l1->val / 10;
        l1->val = l1->val % 10;
        last_pointer = l1;
        l1 = l1->next;
    }
    //This runs if the second list is longer than the first.
    while(l2 != NULL){
        ListNode* next_ptr = new ListNode();
        last_pointer->next = next_ptr;
        last_pointer = next_ptr;
        next_ptr->val = (carry + l2->val) % 10;
        carry = (l2->val + carry) / 10;
        l2 = l2->next;
    }
    //This runs at the end if the lists are completely walked, but there is still a value
    //being carried
    if(carry != 0){
        ListNode* ln_last = new ListNode();
        ln_last->val = carry;
        (*last_pointer).next = ln_last;
    }
    return first_node;
}


int main(){

    //Creates the first node and sets up the necessary refrences to it 
    //in order to iterate through it, but still pass it as a pointer from
    //the first node.
    ListNode* l1 = new ListNode();
    ListNode* l2 = new ListNode();
    ListNode* first = l1;
    ListNode* second = l2;
    ListNode* itr1 = l1;
    ListNode* itr2 = l2;
    //Initialize the values to be saved to the list. I could have done this using an array
    //but arrays don't have a size function so it is kind of a hassle. You need to do some
    //math to find the length of them based on the size of each index.
    vector<int> vals = {0, 2, 3, 5, 6, 7, 9};
    vector<int> vals2 = {0, 1, 3, 5, 8, 2, 9};
    for(int i = 0 ; i < vals.size(); ++i){
        itr1 = new ListNode();
        itr2 = new ListNode();
        l1->next = itr1;
        l2->next = itr2;
        l1->val = vals[i];
        l2->val = vals2[i];
        l1 = l1->next;
        l2 = l2->next;
    }
    //This runs the function and assigns the output
    ListNode* added_vals = addTwoNumbers(first, second);
    cout << "Added Lists: " << endl;
    //This prints out the output
    while (added_vals != NULL){
        cout << added_vals->val << " ";
        added_vals = added_vals->next;
    }
    cout << endl;
    return 0;

}
