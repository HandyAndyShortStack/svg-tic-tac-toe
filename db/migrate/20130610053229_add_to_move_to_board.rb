class AddToMoveToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :to_move, :string
  end
end
