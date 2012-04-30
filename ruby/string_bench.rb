require 'benchmark'

@n = 1000000
def bit_add
  s = String.new
  @n.times { s << rand(100).to_s }
  s
end

def plus_add
  s = String.new
  @n.times { s + rand(100).to_s }
  s
end

Benchmark.bmbm do |x|
  x.report('bit:') { bit_add }
  x.report('plus:') { plus_add }
end
