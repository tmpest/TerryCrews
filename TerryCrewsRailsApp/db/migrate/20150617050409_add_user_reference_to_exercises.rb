class AddUserReferenceToExercises < ActiveRecord::Migration
  def change
    add_reference :exercises, :user, index: true
  end
end
