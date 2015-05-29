class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :unit_preference
      t.boolean :is_public

      t.timestamps null: false
    end
  end
end
