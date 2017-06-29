class ExercisesSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :level, :steps
  has_many :steps, through: :exercise_steps, serializer: StepsSerializer
end
