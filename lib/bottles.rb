class Bottles
  def song
    verses(99, 0)
  end

  def verses(total_number_of_bottles, begin_number_of_bottles)
    total_number_of_bottles.downto(begin_number_of_bottles).map{|n| verse(n)}.join("\n")
  end

  def verse(number_of_bottles)
    new_number_of_bottles = number_of_bottles - 1

    if number_of_bottles == 1
      <<-VERSE
1 bottle of milk on the wall, 1 bottle of milk.
Take it down and pass it around, no more bottles of milk on the wall.
      VERSE
    elsif number_of_bottles == 2
      <<-VERSE
2 bottles of milk on the wall, 2 bottles of milk.
Take one down and pass it around, 1 bottle of milk on the wall.
      VERSE
    elsif number_of_bottles == 0
      <<-VERSE
No more bottles of milk on the wall, no more bottles of milk.
Go to the store and buy some more, 99 bottles of milk on the wall.
      VERSE
    else
      <<-VERSE
#{number_of_bottles} bottles of milk on the wall, #{number_of_bottles} bottles of milk.
Take one down and pass it around, #{new_number_of_bottles} bottles of milk on the wall.
      VERSE
    end
  end
end