class ValueToFloat < ActiveRecord::Migration
  def change
    change_column :draft_picks, :point_value, :float

    change_table :draft_picks do |t|
      t.boolean :trade
    end
  end
end
