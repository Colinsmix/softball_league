class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nickname, null: false
      t.string :location, null: false

      t.timestamps
    end
  end
end
