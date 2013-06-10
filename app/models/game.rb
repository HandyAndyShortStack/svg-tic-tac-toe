class Game < ActiveRecord::Base
  
  attr_accessible :O, :X, :winner
  has_one :board

end
