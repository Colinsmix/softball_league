class CreateStatLines < ActiveRecord::Migration
  def change
    create_table :stat_lines do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :ab
      t.integer :single
      t.integer :double
      t.integer :triple
      t.integer :hr
      t.integer :bb
      t.integer :hbp
      t.integer :k
      t.integer :sac
      t.integer :rbi
      t.integer :sb

      t.timestamps
    end
  end
end
