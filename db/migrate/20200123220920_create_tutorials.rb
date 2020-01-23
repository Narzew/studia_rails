class CreateTutorials < ActiveRecord::Migration[6.0]
  def change
    create_table :tutorials do |t|
      t.string :name
      t.integer :category_id
      t.integer :type_id
      t.string :author
      t.string :description
      t.string :content
      t.boolean :complete

      t.timestamps
    end
  end
end
