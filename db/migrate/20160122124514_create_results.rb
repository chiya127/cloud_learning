class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.integer :question, null: false
      t.integer :score, null: false
      t.timestamps
    end
  end
end
