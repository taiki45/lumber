wallet = [
  Array.new(3) {1000},
  Array.new(3) {500},
  Array.new(5) {100},
  Array.new(0) {50},
  Array.new(6) {10},
  Array.new(4) {5},
  Array.new(8) {1}
]

total = 2646

wallet.each do |items|
  items.each do |item|
    if total - item < 0
      next
    else
      total -= item
      puts item
    end
  end
end

puts 'no money to reduce' if total > 0