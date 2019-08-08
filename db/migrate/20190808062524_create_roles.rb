class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :role_name
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
