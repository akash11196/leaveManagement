class CreateUserAdminLeaves < ActiveRecord::Migration[5.0]
  def change
    create_table :user_admin_leaves do |t|
      t.references :users, foreign_key: true
      t.integer :leave_count

      t.timestamps
    end
  end
end
