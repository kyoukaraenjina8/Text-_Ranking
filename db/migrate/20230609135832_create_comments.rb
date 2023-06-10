class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :book_id, null: false
      t.string :comment_user, null: false
      t.text :comment_introduction, null: false
      t.float :total_score, null: false, default: 0
      t.float :read_score, null: false, default: 0
      t.float :price_score, null: false, default: 0
      t.float :usability_score, null: false, default: 0

      t.timestamps
    end
  end
end
