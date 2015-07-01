class AddReferencesToUserAndMore < ActiveRecord::Migration
  def change
    add_reference :exercise_sets, :user, index: true
    add_reference :preferences, :user, index: true
    add_reference :routines, :user, index: true
    add_reference :user_weights, :user, index: true
    add_reference :workouts, :user, index: true

    add_reference :exercise_sets, :exercise, index: true
    add_reference :exercise_sets, :routine, index: true
    add_reference :exercise_sets, :workout, index: true
    add_reference :routines, :workout, index: true
  end
end
