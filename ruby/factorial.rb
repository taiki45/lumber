class Integer
	def factorial
		altSelf = self
		(altSelf - 1).downto(1) do |i|
			altSelf *= i
		end
		return altSelf
	end
end

