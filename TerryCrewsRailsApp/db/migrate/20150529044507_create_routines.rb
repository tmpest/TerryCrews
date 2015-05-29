class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
