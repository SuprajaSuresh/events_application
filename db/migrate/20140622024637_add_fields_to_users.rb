class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :email, :string
  	add_column :users, :gender, :string
  	add_column :users, :password_digest, :string
  	add_column :users, :remember_token, :string
  end
end