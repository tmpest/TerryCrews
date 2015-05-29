class CreateUserWeights < ActiveRecord::Migration
  def change
    create_table :user_weights do |t|
      t.float :weight

      t.timestamps null: false
    end
  end
end
