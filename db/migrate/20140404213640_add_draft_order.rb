class AddDraftPick < ActiveRecord::Migration
  def change
    create_table :draft_picks do |t|
      t.references :team_id
      t.integer :overall_pick
      t.integer :round
      t.integer :round_pick
      t.boolean :compensatory

      t.timestamps
    end
  end
end
