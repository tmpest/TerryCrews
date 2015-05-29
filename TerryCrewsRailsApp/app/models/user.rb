class User < ActiveRecord::Base
	has_many :user_weights
	has_many :workouts
	has_many :exercises
	has_many :routines
	has_many :preferences
end
