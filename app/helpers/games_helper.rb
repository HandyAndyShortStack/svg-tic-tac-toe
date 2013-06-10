module GamesHelper

  def squares
    [
      "a0", "a1", "a2",
      "b0", "b1", "b2",
      "c0", "c1", "c2"
    ]
  end

  def x_offset square
    column = square[1].to_i
    column * 100
  end

  def y_offset square
    row = "abc".index square[0]
    row * 100
  end

end
