#encoding: utf-8
class AddCommentaryToMockdrafts < ActiveRecord::Migration
  def change
    change_table :mockdrafts do |t|
      t.string :commentary
    end
  end
end
