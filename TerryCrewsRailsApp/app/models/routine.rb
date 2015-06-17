class Routine < ActiveRecord::Base
  belongs_to :user
  belongs_to :workout

  has_many :exercise_sets

end
