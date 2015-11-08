class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string, :name
      t.integer, :sets_count
      t.integer, :rep_goal
      t.array :rep_results

      t.timestamps null: false
    end
  end
end
