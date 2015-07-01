class ExerciseSet < ActiveRecord::Base
  belongs_to :user
  belongs_to :routine
  belongs_to :workout

  belongs_to :exercise
end
