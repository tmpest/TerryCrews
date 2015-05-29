class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.text :notes
      t.datetime :start_time
      t.datetime :end_time
      t.string :name

      t.timestamps null: false
    end
  end
end
