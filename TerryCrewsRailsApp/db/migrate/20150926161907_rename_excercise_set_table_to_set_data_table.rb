class RenameExcerciseSetTableToSetDataTable < ActiveRecord::Migration
  def change
    rename_table :exercise_sets, :set_data
  end
end
