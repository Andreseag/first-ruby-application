class Report < ApplicationRecord
  belongs_to :reportable, polymorphic: true

  validates :notes, presence: true
  
  scope :recent, -> {where("created_at >=", 1.week.ago)}
  
end
