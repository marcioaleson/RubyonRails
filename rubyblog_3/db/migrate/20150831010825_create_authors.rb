class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :bio
      t.string :password
      t.string :email

      t.timestamps null: false
    end
  end
end
