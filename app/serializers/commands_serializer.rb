class CommandsSerializer < ActiveModel::Serializer
  attributes :id, :name, :argument, :color
end
