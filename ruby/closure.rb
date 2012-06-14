def test
  var = 0
  Proc.new { var = var + 1 }
end

num = test
puts num[]
puts num[]

def ini
  a = (1..100).to_a
  Proc.new { a.shift }
end

arr = ini
puts arr[]
puts arr[]
50.times { arr[] }
puts arr[]
