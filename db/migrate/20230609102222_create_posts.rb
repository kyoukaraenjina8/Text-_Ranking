class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.string :text_name, null: false
      t.text :introduction, null: false
      t.text :review, null: false
      t.integer :price, null: false
      t.integer :genre_id, null: false
      t.timestamps
    end
  end
end