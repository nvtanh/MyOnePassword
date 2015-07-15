class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :username
      t.string :password_encrypted
      t.text :site_url

      t.timestamps null: false
    end
  end
end
