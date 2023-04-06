#include <list>
#include <iostream>

//Leet Ratings
//       Speed  Memory
//Total  27ms    6.1MB    
//Beats  15.5%   14.79%
//


using namespace std;

bool isPalindrome(int x) {
   list<char> list1;
   string temp = to_string(x);
    for (int i = 0; i < temp.length() / 2; ++i){
        if(temp[i] != temp[temp.length() - i - 1]){
            return false;
        }
    }
   return true;
}




int main(){


    int input;
    cout << "Enter a number: ";
    cin >> input;
    cout << boolalpha <<  isPalindrome(input) << endl;


}
