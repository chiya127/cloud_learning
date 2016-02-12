class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :category_id, null: false
      t.string :body, null: false
      t.string :profile, null: false
      t.string :form, null: false

      t.timestamps
    end
  end
end
