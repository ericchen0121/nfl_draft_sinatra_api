#encoding: utf-8
class CommentaryToTextField < ActiveRecord::Migration
  def change
    change_column :mockdrafts, :commentary, :text
  end
end
