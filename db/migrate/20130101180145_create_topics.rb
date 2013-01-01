class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :author
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
