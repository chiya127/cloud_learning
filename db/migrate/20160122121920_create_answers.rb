class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.intrger question_id, null: false
      t.string :body, null: false
      t.string :note, null false
      t.string :profile, null: false
      t.string :result, null false
      t.timestamps null: false
    end
  end
end
