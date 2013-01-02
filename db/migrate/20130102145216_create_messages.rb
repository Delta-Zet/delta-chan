class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.text :message
      t.references :topic
      t.attachment :image

      t.timestamps
    end
    add_index :messages, :topic_id
  end
end
