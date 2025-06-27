class Task < ApplicationRecord
  # Validate title
  validates :title, presence: true
end
