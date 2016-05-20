class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account, null: false, default: nil
      t.string :password
      t.boolean :admin, null: false, default: false
      t.boolean :creator
      t.string :email, null: false

      t.timestamps
    end
  end
end
