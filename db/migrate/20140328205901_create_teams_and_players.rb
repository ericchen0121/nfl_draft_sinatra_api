class CreateTeamsAndPlayers < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
    end

    create_table :players do |t|
      t.string :name
      t.integer :team_id
    end
  end
end
