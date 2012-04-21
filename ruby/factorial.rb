class Integer
  def factorial
    alt = self
    (alt - 1).downto(1) { |i| alt *= i }
    alt
  end
end

