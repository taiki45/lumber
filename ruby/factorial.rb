class Integer
  def factorial
    alt = self
    (alt - 1).downto(1) do |i|
      alt *= i
    end
    alt
  end
end

