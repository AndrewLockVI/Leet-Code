#include <iostream>


//Leet Ratings
//       Speed  Memory
//Total  0ms    6.4MB    
//Beats  100%   5.61%
//

using namespace std;

int reverse(int z)
{
    bool negative = false;
    if(z < 0){
        negative = true;
    }
    string str = to_string(abs(z));
    string temp;
    for(int i = str.length() - 1; i >= 0; --i){
        temp += str[i];
    }
    str = temp;
    try{
        if(negative){
            return(stoi(str) * -1);
        }
        else{
            return(stoi(str));
        }
    }
    catch(exception& error){
        return 0;
    }
}

int main(){
    cout << "Enter a number: ";
    int input;
    cin >> input;
    cout << reverse(input) << endl;
    return 0;
}


