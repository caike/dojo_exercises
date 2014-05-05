"""FizzBuzz: Fizz Buzz Test

Test Cases:
    fizz_or_buzz(3) -> "Fizz"
    fizz_or_buzz(5) -> "Buzz"
    fizz_or_buzz(15) -> "FizzBuzz"

Copyright (c) Demetrius A. Ford <dford.py@Knights.ucf.edu>

file: test_fizz_buzz.py
author: Demetrius A. Ford <demet.ucf@gmail.com>
version: Python 2.7.2
"""

import unittest
from fizz_buzz import fizz_or_buzz


class TestFizzBuzz(unittest.TestCase):

    """Test suite for Fizz Buzz."""

    def test_multiples_of_none(self):
        """Should return multiple."""
        multiples = [i for i in xrange(1, 101) if i % 3 != 0 and i % 5 != 0]
        for multiple in multiples:
            self.assertEqual(multiple, fizz_or_buzz(multiple))

    def test_multiples_of_three(self):
        """Should return Fizz."""
        multiples = [i for i in xrange(1, 101) if i % 3 == 0 and i % 5 != 0]
        for multiple in multiples:
            self.assertEqual("Fizz", fizz_or_buzz(multiple))

    def test_multiples_of_five(self):
        """Should return Buzz."""
        multiples = [i for i in xrange(1, 101) if i % 5 == 0 and i % 3 != 0]
        for multiple in multiples:
            self.assertEqual("Buzz", fizz_or_buzz(multiple))

    def test_multiples_of_both(self):
        """Should return FizzBuzz."""
        multiples = [i for i in xrange(1, 101) if i % 15 == 0]
        for multiple in multiples:
            self.assertEqual("FizzBuzz", fizz_or_buzz(multiple))


if __name__ == "__main__":
    unittest.main()
