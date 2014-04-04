class ChangeTeamIdName < ActiveRecord::Migration
  def change
    change_table :draft_picks do |t|
      t.remove :team_id_id
      t.references :team
    end
  end
end
