class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :account,  null: false
      t.string  :password, null: false
      t.boolean :admin,    null: false,  default: false
      t.string  :creator,  null: false
      t.string  :email,    null: false

      t.timestamps         null: false
    end
  end
end
