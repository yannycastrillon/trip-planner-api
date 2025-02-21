class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :budget_min, :budget_max, :max_duration, :status, :preferred_seasons

  def status
    object.status.titleize
  end
end
