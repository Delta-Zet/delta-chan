class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :slug
      t.string :title
      t.string :description
      t.string :position

      t.timestamps
    end
  end
end
