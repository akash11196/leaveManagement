class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :leave_count,default: 33
      t.string :password_digest
      t.boolean :is_admin,default: false

      t.timestamps
    end
  end
end
