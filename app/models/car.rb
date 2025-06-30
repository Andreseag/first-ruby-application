class Car < ApplicationRecord
  has_many :repairs, dependent: :destroy
  has_many :reports, as: :reportable, dependent: :destroy

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true 

  scope :recent_models, -> {where("year >= ?", 5.years.ago.year)}

end
