#Given a number, e.g., 2789, as an array [2,7,8,9].
#Write a method that returns the array incremented by one:
# i.e. [2,7,9,0].

nums = [2,7,8,9]

def return_incremented(nums)
  nums.join.to_i + 1
end

puts return_incremented nums
