class RenameMockdraft < ActiveRecord::Migration
  def change
    rename_table(:mockdraft, :mockdrafts)
  end
end
