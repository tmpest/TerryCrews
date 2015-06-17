class ExerciseSet < ActiveRecord::Base
  belongs_to :user
  belongs_to :routine
  belongs_to :workout

  has_many :exercises
end
