class Board < ActiveRecord::Base
  attr_accessible :a0, :a1, :a2, :b0, :b1, :b2, :c0, :c1, :c2, :game_id, :to_move
  belongs_to :game

  def toggle
    if to_move == "X"
      Board.update(id, {to_move: "O"})
    else
      Board.update(id, {to_move: "X"})
    end
  end

  def winner
    winning_combinations.each do |combination|
      results = []
      combination.each do |square|
        results << self.send(square)
      end
      if results[0] && results.uniq.length == 1
        return results[0]
      end
    end
    nil
  end

private

  def winning_combinations
    [
      [:a0, :b0, :c0],
      [:a1, :b1, :c1],
      [:a2, :b2, :c2],
      [:a0, :a1, :a2],
      [:b0, :b1, :b2],
      [:c0, :c1, :c2],
      [:a0, :b1, :c2],
      [:a2, :b1, :c0]
    ]
  end

end
