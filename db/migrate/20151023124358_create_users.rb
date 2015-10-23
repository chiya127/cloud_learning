class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :acount, null: false, default: nil
      t.string :password
      t.boolean :admin, null: false, default: false
      t.string :creator
      t.string :email, null: false

      t.timestamps null: false
    end
  end
end
