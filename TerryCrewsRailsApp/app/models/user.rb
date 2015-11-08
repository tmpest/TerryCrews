class User < ActiveRecord::Base
  enum unit_preference: { :imperial, :metric }
end
