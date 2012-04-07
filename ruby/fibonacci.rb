def fib(n)
  fib = Array.new
  a, b = 0, 1
  (n+1).times do
    fib.push a
    a, b = b, a+b
  end
  fib
end

puts fib(10).last
