class Exercise < ActiveRecord::Base
  has_many :exercise_steps
  has_many :steps, through :exercise_steps
end
