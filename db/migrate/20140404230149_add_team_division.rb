class AddTeamDivision < ActiveRecord::Migration
  def change
    change_table :teams do |t|
      t.string :division
    end
  end
end
