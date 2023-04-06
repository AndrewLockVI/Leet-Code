#include <list>
#include <iostream>

//Leet Ratings
//       Speed  Memory
//Total  4ms    6MB    
//Beats  98.16% 14.79%
//
//Added check to see if number is negative to the start to not have to deal with
//those issues.


using namespace std;

bool isPalindrome(int x) {
   if(x >= 0)
   {
       list<char> list1;
       string temp = to_string(x);
       for (int i = 0; i < temp.length() / 2; ++i){
            if(temp[i] != temp[temp.length() - i - 1]){
                return false;
            }
       }
       return true;
   }
   return false;
}




int main(){


    int input;
    cout << "Enter a number: ";
    cin >> input;
    cout << boolalpha <<  isPalindrome(input) << endl;


}
