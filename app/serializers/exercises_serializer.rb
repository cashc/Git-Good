class ExercisesSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :difficulty
  # has_many :steps, through: :exercise_steps, serializer: StepsSerializer
end
