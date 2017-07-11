class Step < ActiveRecord::Base
  has_many :step_commands
  has_many :commands, through: :step_commands
  default_scope { order(number: :asc) }
end
