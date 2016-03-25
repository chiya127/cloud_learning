class CreateCategoryUsers < ActiveRecord::Migration
  def change
    create_table :category_users do |t|
      t.string :display, null: false
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.timestamps
    end
  end
end
