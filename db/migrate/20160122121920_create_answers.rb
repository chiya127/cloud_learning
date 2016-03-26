class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id, null: false
      t.string :body, null: false
      t.string :note, null: false
      t.string :profile, null: false
      t.string :result, null: false
      t.timestamps
    end
  end
end
