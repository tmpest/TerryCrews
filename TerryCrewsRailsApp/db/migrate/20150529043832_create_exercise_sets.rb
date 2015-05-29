class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.integer :target_reps
      t.integer :achieved_reps
      t.float :weight
      t.integer :rest_period_seconds

      t.timestamps null: false
    end
  end
end
