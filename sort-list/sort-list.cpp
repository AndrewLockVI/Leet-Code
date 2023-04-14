#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

//Runtime: 172ms Beats: 98.86%
//Memory: 53.2MB Beats: 71%


struct ListNode{
    int val;
    ListNode* next;


};



ListNode* sortList(ListNode* head) {
    vector<int> sorted;
    ListNode* itr = head;
    ListNode* itr1 = head;
    while(itr!= NULL){
        sorted.push_back(itr->val);
        itr=itr->next;
    }
    sort(sorted.begin(), sorted.end());
    for(int i = 0; i < sorted.size(); ++i){
        itr1->val = sorted[i];
        itr1 = itr1->next;
    }

    return head;
}

int main(){
    ListNode* l1 = new ListNode;
    ListNode* ln2 = new ListNode;
    ListNode* ln3 = new ListNode;
    ListNode* ln4 = new ListNode;
    l1->val = 0;
    ln2->val = 10;
    ln3->val = 4;
    ln4->val = -1;
    l1->next = ln2;
    ln2->next = ln3;
    ln3->next = ln4;      
    ListNode* l2 = sortList(l1);
    while(l2 != NULL){
        cout << l2->val << " " ;
        l2 = l2->next;
    }
    cout << endl;
}
