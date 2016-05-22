class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
      t.string   :first_name
      t.string   :last_name
      t.string   :age
      t.string   :phone
      t.string   :description
      t.string   :gender
      t.string   :country
      t.string   :state
      t.string   :address
      t.string   :avatar
      t.string  :preference

    end

    add_index :users, :email
    add_index :users, :remember_token
  end
end
