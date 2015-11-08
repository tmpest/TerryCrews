class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string, :user_name
      t.string,firstname :password_digest
      t.string, :surname
      t.string, :email
      t.date, :birthdate
      t.enum :unit_preference

      t.timestamps null: false
    end
  end
end
