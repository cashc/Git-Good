class StepCommand < ActiveRecord::Base
  belongs_to :steps, :class_name => "Step", :foreign_key => "step_id"
  belongs_to :commands, :class_name => "Command", :foreign_key => "command_id"
end
