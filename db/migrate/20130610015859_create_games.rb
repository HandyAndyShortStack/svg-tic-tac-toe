class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :X
      t.string :O
      t.string :winner

      t.timestamps
    end
  end
end
