class StepsSerializer < ActiveModel::Serializer
  attributes :id, :instruction, :answer, :correct_response, :error_response
  # has_many :commands, through: :step_commands, serializer: CommandsSerializer
end
