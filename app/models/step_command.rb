class StepCommand < ActiveRecord::Base
  belongs_to :steps
  belongs_to :commands
end
