#数字が書かれたn枚のカード(K1, K2, ..., Kn)がある。
#ここから１枚取り出し、数字を確認して戻すことを４回行う。
#４枚のカードの数字の和がmとなる取り出し方が存在するかどうかを計算し、
#存在するならTrue、存在しないならFalseを出力するプログラムを作成せよ。
#
class Cards
  def initialize(size, nums)
    @size = size
    @nums = nums
    raise :wrong_nums if @size != @nums.size
  end

  public
  def search_answer(answer)
    @size.times do |i1|
      @size.times do |i2|
        @size.times do |i3|
          @size.times do |i4|
            p [i1,i2,i3,i4]
            p temp = @nums[i1] + @nums[i2] + @nums[i3] + @nums[i4]
            return true  if temp == answer
          end
        end
      end
    end
    false
  end

end

n = 10
m = 11
cards_nums = [2,2,2,3,2,2,2,2,2,2]
cards = Cards.new(n, cards_nums)
puts cards.search_answer(m)
