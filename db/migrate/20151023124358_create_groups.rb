class CreateUsers < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :tenant_id, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
