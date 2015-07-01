class ReverseExerciseAndExerciseSetsAssociations < ActiveRecord::Migration
  def change
    remove_column :exercises, :exercise_set_id
    add_reference :exercise_sets, :exercise, index: true
  end
end
