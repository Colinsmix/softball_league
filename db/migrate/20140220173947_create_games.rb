class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :hteam_score, null: false
      t.integer :ateam_score, null: false
      t.integer :hteam_id, null: false
      t.integer :ateam_id, null: false

      t.timestamps
    end
  end
end
