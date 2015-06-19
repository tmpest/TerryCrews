class User < ActiveRecord::Base
  has_many :exercises
  has_many :exercise_sets
  has_many :user_weights
  has_many :workouts
  has_many :routines

  has_one :preference

  #Friendship Model Code
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
end
