class Workout < ActiveRecord::Base
  belongs_to :user

  has_many :routines
  has_many :exercise_sets
end
