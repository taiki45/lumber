#正の整数nが与えられた時に
#高さnのピラミッドを出力
#lenght at n = 2n-1
#center is n-1
#
module Pyramid
  def self.print_pyramid(n)
    i = 1
    (n-1).downto(0) do |blanks|
      print ' ' * blanks
      print '*' * (2 * i - 1)
      print ' ' * blanks
      print "\n"
      i += 1
    end
  end
end

Pyramid.print_pyramid(4)
