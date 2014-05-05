#include <iostream>
#include <vector>
#include "fizzbuzz.h"
using namespace std;

void test(string expected, string actual) {
    cout << ((expected == actual) ? "Pass" : "Fail");
}

string fizzbuzz(int num) {
    string answer = "";

    if(num % 3 == 0) answer += "Fizz";
    if(num % 5 == 0) answer += "Buzz";

    return((answer.empty()) ? to_string(num) : answer);
}

vector<int> get_multiples_of_fizz() {
    vector<int> multiples;

    for(int i = 1; i <= 100; i++) {
        if(i % 3 == 0 && i % 5 != 0) {
            multiples.push_back(i);
        }
    }

    return multiples;
}

vector<int> get_multiples_of_buzz() {
    vector<int> multiples;

    for(int i = 1; i <= 100; i++) {
        if(i % 3 != 0 && i % 5 == 0) {
            multiples.push_back(i);
        }
    }

    return multiples;
}

vector<int> get_multiples_of_both() {
    vector<int> multiples;
    
    for(int i = 1; i <= 100; i++) {
        if(i % 3 == 0 && i % 5 == 0) {
            multiples.push_back(i);
        }
    }
    
    return multiples;
}

vector<int> get_multiples_of_none() {
    vector<int> multiples;
    
    for(int i = 1; i <= 100; i++) {
        if(i % 3 != 0 && i % 5 != 0) {
            multiples.push_back(i);
        }
    }
    
    return multiples;
}
