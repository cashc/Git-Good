class ExerciseStep < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :steps
end
