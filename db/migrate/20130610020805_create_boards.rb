class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :a0
      t.string :a1
      t.string :a2
      t.string :b0
      t.string :b1
      t.string :b2
      t.string :c0
      t.string :c1
      t.string :c2

      t.timestamps
    end
  end
end
