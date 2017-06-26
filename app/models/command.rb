class Command < ActiveRecord::Base
  has_many :step_commands
  has_many :steps, through :step_commands
end
