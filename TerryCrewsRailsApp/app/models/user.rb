class User < ActiveRecord::Base
  has_many :exercises
  has_many :exercise_sets
  has_many :user_weights
  has_many :workouts
  has_many :routines

  has_one :preference
end
