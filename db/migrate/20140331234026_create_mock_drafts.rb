class CreateMockDrafts < ActiveRecord::Migration
  def change

    # change the original tables
    change_table :players do |t|
      t.remove :team_id

      t.string :position

      t.timestamps
    end

    change_table :teams do |t|
      t.timestamps
    end

    # create a few new tables
    create_table :author_versions do |t|
      t.string :author
      t.integer :version
      t.datetime :date_published
      t.string :url
      t.string :company

      t.timestamps
    end

    create_table :mockdrafts do |t|
      t.references :author_version
      t.references :player
      t.references :team

      t.integer :overall_pick
      
      t.timestamps
    end

  end
end
