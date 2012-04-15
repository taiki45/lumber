#!/usr/bin/env ruby
def fizz?(num)
  return true if (num % 3) == 0
  false
end

def buzz?(num)
  return true if (num % 5) == 0
  false
end

def fizz_buzz(num)
  1.upto(num) do |n|
    if fizz?(n) && buzz?(n)
      puts 'FizzBuzz'
    elsif fizz?(n)
      puts 'Fizz'
    elsif buzz?(n)
      puts 'Buzz'
    else
      puts n
    end
  end
end

fizz_buzz(ARGV[0].to_i) if ARGV[0]
