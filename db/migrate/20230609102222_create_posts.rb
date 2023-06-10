class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.string :text_name, null: false
      t.text :introduction, null: false
      t.text :review, null: false
      t.integer :price, null: false
      t.float :total_score, null: false, default: 0
      t.float :read_score, null: false, default: 0
      t.float :price_score, null: false, default: 0
      t.float :usability_score, null: false, default: 0

      t.timestamps
    end
  end
end