#include <iostream>
using namespace std;


struct ListNode {
    int val;
    ListNode *next;
};




ListNode* removeNthFromEnd(ListNode* head, int n) {    
    ListNode* itr1 = head;
    ListNode* itr2 = head;
    int length = 0;
    while(itr1 != NULL){
        itr1 = itr1->next;
        length += 1;
    }
    n = length - n;
    if(n == 0){
        return head->next;
    }
    int count = 0;
    while (count < n - 1){
        itr2 = itr2->next;
        count += 1;
    }
    ListNode* itr3 = itr2->next;
    itr2->next = itr3->next;
    return head;
}


int main(){

    ListNode* ln1 = new ListNode;
    ListNode* ln2 = new ListNode;
    ListNode* ln3 = new ListNode;
    ListNode* ln4 = new ListNode;
    ln1->val = 10;
    ln2->val = 4;
    ln3->val = 5;
    ln4->val = 9;
    ln1->next = ln2;
    ln2->next = ln3;
    ln3->next = ln4;


    ListNode* itr = removeNthFromEnd(ln1, 2);    
    for(int i = 0 ; i < 3; ++i){
        cout << itr->val << " ";
        itr = itr->next;
    }
    cout << endl;
    return 0;
}
