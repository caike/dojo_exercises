"""FizzBuzz: Fizz Buzz Kata

For numbers 1..100 (inclusive) determine if the number is a multiple of
three, five, or both. Multiples of three should print "Fizz". Multiples of five
should print "Buzz". Multiples of both three and five should print "FizzBuzz".

Copyright (c) Demetrius A. Ford <dford.py@Knights.ucf.edu>

file: fizz_buzz.py
author: Demetrius A. Ford <demet.ucf@gmail.com>
version: Python 2.7.2
"""


def fizz_or_buzz(num):
    """Returns either Fizz, Buzz, or FizzBuzz."""
    fizz = "%s" % ("Fizz" if num % 3 == 0 else "")
    buzz = "%s" % ("Buzz" if num % 5 == 0 else "")
    return fizz + buzz if fizz or buzz else num
