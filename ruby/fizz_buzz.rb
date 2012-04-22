#!/usr/bin/env ruby
def fizz?(num)
  num % 3 == 0 ? true : false
end
def buzz?(num)
  num % 5 == 0 ? true : false
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
      puts(n)
    end
  end
end

fizz_buzz(ARGV[0].to_i) if ARGV[0]
