class Exercise < ActiveRecord::Base
  belongs_to :user
  belongs_to :routine
  belongs_to :workout

  has_many :set_data
end
