class StepsSerializer < ActiveModel::Serializer
  attributes :id, :instruction, :answer, :correct_response, :error_response, :number, :commands
  has_many :commands, through: :step_commands, serializer: CommandsSerializer
end
