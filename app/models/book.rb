class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  before_save :normalize_author

  private
  def normalize_author 
    self.author = author.split.map(&:capitalize).join(" ") if author.present?
  end 
end