class ExerciseStep < ActiveRecord::Base
  belongs_to :exercises, :class_name => "Exercise", :foreign_key => "exercise_id"
  belongs_to :steps, :class_name => "Step", :foreign_key => "step_id"
end
