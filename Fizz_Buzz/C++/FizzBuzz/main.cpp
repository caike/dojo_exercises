/**
 * Write a program that prints the numbers from 1 to 100. For multiples of three
 * print "Fizz" instead of the number and for the multiples of five print "Buzz".
 * For numbers which are multiples of both three and five print "FizzBuzz".
 *
 * Test Cases:
 *    fizzbuzz(1) -> "1"
 *    fizzbuzz(3) -> "Fizz"
 *    fizzbuzz(5) -> "Buzz"
 *    fizzbuzz(15) -> "FizzBuzz"
 */

#include <iostream>
#include "fizzbuzz.h"
using namespace std;

int main(int argc, const char * argv[]) {
    vector<int> multiples;
    
    multiples = get_multiples_of_fizz();
    for(vector<int>::iterator it = multiples.begin(); it != multiples.end(); ++it) {
        test("Fizz", fizzbuzz(*it));
    }
    
    multiples = get_multiples_of_buzz();
    for(vector<int>::iterator it = multiples.begin(); it != multiples.end(); ++it) {
        test("Buzz", fizzbuzz(*it));
    }
    
    multiples = get_multiples_of_both();
    for(vector<int>::iterator it = multiples.begin(); it != multiples.end(); ++it) {
        test("FizzBuzz", fizzbuzz(*it));
    }
    
    multiples = get_multiples_of_none();
    for(vector<int>::iterator it = multiples.begin(); it != multiples.end(); ++it) {
        test(to_string(*it), fizzbuzz(*it));
    }
    
    return 0;
}
