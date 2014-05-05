def fizz_or_buzz(n)
  says = "#{'Fizz' if n % 3 == 0}#{'Buzz' if n % 5 == 0}"
  says.size == 0 ? n : says
end
