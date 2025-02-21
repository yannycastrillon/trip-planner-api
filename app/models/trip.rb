class Trip < ApplicationRecord
  VALID_SEASONS = ["spring", "summer", "fall", "winter"]
  VALID_STATUSES = ["draft", "in_progress", "done"]

  validates :name, presence: true
  validates :max_duration, presence: true, numericality: { greater_than: 0 }
  validates :budget_min, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :budget_max, presence: true, numericality: { greater_than: :budget_min }

  validates :status, inclusion: { in: VALID_STATUSES }
  validates :preferred_season, inclusion: { in: VALID_SEASONS }
end
