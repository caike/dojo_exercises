#ifndef FizzBuzz_fizzbuzz_h
#define FizzBuzz_fizzbuzz_h

#include <vector>
using namespace std;

void test(string expected, string actual);
vector<int> get_multiples_of_fizz();
vector<int> get_multiples_of_buzz();
vector<int> get_multiples_of_both();
vector<int> get_multiples_of_none();
string fizzbuzz(int num);

#endif
